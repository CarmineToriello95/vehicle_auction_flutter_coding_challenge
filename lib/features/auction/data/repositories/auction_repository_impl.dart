import 'dart:async';

import 'package:vehicles_dealing_flutter_coding_challenge/core/error/exceptions.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/error/failures.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/data/datasources/local_data_source.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/data/datasources/remote_data_source.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/data/models/auction_model.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/data/models/vehicle_model.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/domain/repositories/auction_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuctionRepository)
class AuctionRepositoryImpl implements AuctionRepository {
  final AuctionRemoteDataSource _auctionRemoteDataSource;
  final AuctionLocalDataSource _auctionLocalDataSource;

  AuctionRepositoryImpl(
    this._auctionRemoteDataSource,
    this._auctionLocalDataSource,
  );

  @override
  Future<Either<Failure, Tuple2<AuctionModel?, List<VehicleModel>?>>>
      requestAuctionData({
    required String vin,
    required String userId,
  }) async {
    try {
      final tuple = await _auctionRemoteDataSource.requestAuctionData(
          vin: vin, userId: userId);
      if (tuple.value1 != null) {
        await _auctionLocalDataSource.saveAuction(auctionModel: tuple.value1!);
      }
      return Right(tuple);
    } on TimeoutException {
      return Left(
        TimeOutFailure(
          message: 'Please check your internet connection and try again',
        ),
      );
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          title: 'SERVER MAINTENANCE',
          message: e.message,
        ),
      );
    } on ClientException {
      return Left(
        ClientFailure(
          message:
              'Something went wrong with the client authentication. Please try again',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, AuctionModel?>> maybeRetrieveLastAuctionSaved() async {
    try {
      final auctionModel = await _auctionLocalDataSource.retrieveAuction();
      return Future.value(Right(auctionModel));
    } on Exception {
      return Future.value(Left(CacheFailure()));
    }
  }
}
