// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuctionModel _$AuctionModelFromJson(Map<String, dynamic> json) => AuctionModel(
      id: json['id'] as int,
      feedback: json['feedback'] as String,
      valuatedAt: DateTime.parse(json['valuatedAt'] as String),
      requestedAt: DateTime.parse(json['requestedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      make: json['make'] as String,
      model: json['model'] as String,
      externalId: json['externalId'] as String,
      fkSellerUserM: json['_fk_sellerUser'] as String,
      price: json['price'] as int,
      positiveCustomerFeedback: json['positiveCustomerFeedback'] as bool,
      fkUuidAuctionM: json['_fk_uuid_auction'] as String,
      inspectorRequestedAt:
          DateTime.parse(json['inspectorRequestedAt'] as String),
      origin: json['origin'] as String,
      estimationRequestId: json['estimationRequestId'] as String,
    );

Map<String, dynamic> _$AuctionModelToJson(AuctionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'feedback': instance.feedback,
      'valuatedAt': instance.valuatedAt.toIso8601String(),
      'requestedAt': instance.requestedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'make': instance.make,
      'model': instance.model,
      'externalId': instance.externalId,
      'price': instance.price,
      'positiveCustomerFeedback': instance.positiveCustomerFeedback,
      'inspectorRequestedAt': instance.inspectorRequestedAt.toIso8601String(),
      'origin': instance.origin,
      'estimationRequestId': instance.estimationRequestId,
      '_fk_sellerUser': instance.fkSellerUserM,
      '_fk_uuid_auction': instance.fkUuidAuctionM,
    };
