import 'package:vehicles_dealing_flutter_coding_challenge/core/error/failures.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/usecases/usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/domain/entities/auction.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/domain/repositories/auction_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class RetrieveLastAuctionSavedUseCase implements UseCase<Auction?, NoParams> {
  final AuctionRepository _auctionRepository;

  RetrieveLastAuctionSavedUseCase(this._auctionRepository);

  @override
  Future<Either<Failure, Auction?>> call(NoParams params) =>
      _auctionRepository.maybeRetrieveLastAuctionSaved();
}
