import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/auction.dart';

part 'auction_model.g.dart';

@JsonSerializable()
class AuctionModel extends Auction {
  @JsonKey(name: "_fk_sellerUser")
  final String fkSellerUserM;

  @JsonKey(name: "_fk_uuid_auction")
  final String fkUuidAuctionM;

  AuctionModel({
    required super.id,
    required super.feedback,
    required super.valuatedAt,
    required super.requestedAt,
    required super.createdAt,
    required super.updatedAt,
    required super.make,
    required super.model,
    required super.externalId,
    required this.fkSellerUserM,
    required super.price,
    required super.positiveCustomerFeedback,
    required this.fkUuidAuctionM,
    required super.inspectorRequestedAt,
    required super.origin,
    required super.estimationRequestId,
  }) : super(
          fkSellerUser: fkSellerUserM,
          fkUuidAuction: fkUuidAuctionM,
        );

  factory AuctionModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuctionModelToJson(this);
}
