import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/auction.dart';
import '../../domain/entities/vehicle.dart';

part 'auction_page_state.freezed.dart';

@freezed
sealed class AuctionPageState with _$AuctionPageState {
  const factory AuctionPageState({
    @Default('') String vin,
    Auction? auction,
    List<Vehicle>? vehicles,
    Failure? failure,
  }) = _AuctionPageState;

  factory AuctionPageState.initial() => const AuctionPageState();

  factory AuctionPageState.isLoading() = Loading;

  factory AuctionPageState.populatedWithAuction({required Auction auction}) =
      PopulatedWithAuction;

  factory AuctionPageState.populatedWithVehicles(
      {required List<Vehicle> vehicles}) = PopulatedWithVehicles;

  factory AuctionPageState.failure({required Failure failure}) = FailureState;

  factory AuctionPageState.lastAuctionAvailable({
    required Auction auction,
    required Failure failure,
  }) = LastAuctionAvailable;
}
