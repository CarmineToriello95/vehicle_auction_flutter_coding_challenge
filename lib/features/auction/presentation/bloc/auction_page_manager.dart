import 'package:vehicles_dealing_flutter_coding_challenge/core/error/failures.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/usecases/usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/domain/usecases/get_auction_data_usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/domain/usecases/retrieve_last_auction_saved_use_case.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/presentation/bloc/auction_page_state.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/presentation/bloc/auth_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/auction.dart';
import '../../domain/entities/vehicle.dart';

@LazySingleton()
class AuctionPageManager extends Cubit<AuctionPageState> {
  final AuthManager _authManager;
  final GetAuctionDataUseCase _getAuctionDataUseCase;
  final RetrieveLastAuctionSavedUseCase _retrieveLastAuctionSavedUseCase;

  AuctionPageManager(
    this._authManager,
    this._getAuctionDataUseCase,
    this._retrieveLastAuctionSavedUseCase,
  ) : super(AuctionPageState.initial());

  void requestAuctionData({required String vin}) async {
    emit(AuctionPageState.isLoading());

    final userId = _authManager.user?.id ?? '';

    final result = await _getAuctionDataUseCase.call(
      GetAuctionDataUseCaseParams(vin: vin, userId: userId),
    );
    result.fold(
      _handleFailureResult,
      _handleSuccessResult,
    );
  }

  void _handleSuccessResult(Tuple2<Auction?, List<Vehicle>?> success) {
    final auction = success.value1;
    final vehicles = success.value2;
    if (auction != null) {
      emit(AuctionPageState.populatedWithAuction(auction: auction));
    } else if (vehicles != null) {
      /// Sort the list of vehicles based on the similarity field.
      /// The higher the value, the higher a vehicle is put in the list.
      vehicles.sort(
        (a, b) => b.similarity.compareTo(a.similarity),
      );
      emit(AuctionPageState.populatedWithVehicles(vehicles: vehicles));
    }
  }

  /// If an error occurs with the request, check if there is an auction saved locally.
  /// If yes, emit the state that allows the user to see it
  /// If no, just emit the state with the error happend during the request
  void _handleFailureResult(Failure failure) async {
    final lastSavedAuction =
        await _retrieveLastAuctionSavedUseCase.call(NoParams());

    lastSavedAuction.fold(
      (_) => emit(AuctionPageState.failure(failure: failure)),
      (auction) => {
        if (auction != null)
          emit(
            AuctionPageState.lastAuctionAvailable(
              auction: auction,
              failure: failure,
            ),
          )
        else
          {emit(AuctionPageState.failure(failure: failure))}
      },
    );
  }

  void showAuction({required Auction auction}) =>
      emit(AuctionPageState.populatedWithAuction(auction: auction));
}
