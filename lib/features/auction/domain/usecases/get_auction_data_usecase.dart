import 'package:vehicles_dealing_flutter_coding_challenge/core/error/failures.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/usecases/usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/domain/repositories/auction_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/auction.dart';
import '../entities/vehicle.dart';

@injectable
class GetAuctionDataUseCase
    implements
        UseCase<Tuple2<Auction?, List<Vehicle>?>, GetAuctionDataUseCaseParams> {
  final AuctionRepository _auctionRepository;

  GetAuctionDataUseCase(this._auctionRepository);

  @override
  Future<Either<Failure, Tuple2<Auction?, List<Vehicle>?>>> call(
          GetAuctionDataUseCaseParams params) =>
      _auctionRepository.requestAuctionData(
        vin: params.vin,
        userId: params.userId,
      );
}

class GetAuctionDataUseCaseParams {
  final String vin;
  final String userId;

  GetAuctionDataUseCaseParams({
    required this.vin,
    required this.userId,
  });
}
