import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/auction.dart';
import '../entities/vehicle.dart';

abstract class AuctionRepository {
  Future<Either<Failure, Tuple2<Auction?, List<Vehicle>?>>> requestAuctionData({
    required String vin,
    required String userId,
  });

  Future<Either<Failure, Auction?>> maybeRetrieveLastAuctionSaved();
}
