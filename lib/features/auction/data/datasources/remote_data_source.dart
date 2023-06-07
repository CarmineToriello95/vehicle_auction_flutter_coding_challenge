import 'dart:convert';

import 'package:vehicles_dealing_flutter_coding_challenge/core/error/exceptions.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/mocks/vehicle_auction_challenge.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/utils/api_utils.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/data/models/api_response_error_model.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/data/models/auction_model.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/data/models/vehicle_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class AuctionRemoteDataSource {
  Future<Tuple2<AuctionModel?, List<VehicleModel>?>> requestAuctionData({
    required String vin,
    required String userId,
  });
}

@Injectable(as: AuctionRemoteDataSource)
class AuctionRemoteDataSourceImpl implements AuctionRemoteDataSource {
  @override
  Future<Tuple2<AuctionModel?, List<VehicleModel>?>> requestAuctionData({
    required String vin,
    required String userId,
  }) async {
    final queryParameters = {"VIN": vin};
    final response = await VehiclesDealingChallenge.httpClient.get(
      Uri.https(
        ApiUtils.authority,
        ApiUtils.auctionSearchPath,
        queryParameters,
      ),
      headers: {VehiclesDealingChallenge.user: userId},
    );
    if (response.statusCode == 200) {
      return _parseSuccess(response);
    } else if (response.statusCode == 300) {
      return _parseMultipleChoices(response);
    } else {
      final error = ApiResponseErrorModel.fromJson(jsonDecode(response.body));
      throw ServerException(
        title: 'SERVER MAINTENANCE',
        message: error.message,
      );
    }
  }

  Tuple2<AuctionModel?, List<VehicleModel>?> _parseSuccess(
    http.Response response,
  ) {
    late final Map<String, dynamic> decodedResponseBody;

    /// PLEASE NOTE: I would usually catch exceptions only in the repository
    /// that calls this datasource, and not here.
    ///
    /// In this case though I had to do it because I needed to apply a change
    /// in the incoming JSON, since there is a format error in it (missing comma).
    try {
      decodedResponseBody = jsonDecode(response.body);
    } on FormatException {
      decodedResponseBody = jsonDecode(
        response.body.replaceAll("\"_fk_sellerUser", ",\"_fk_sellerUser"),
      );
    }
    final auction = AuctionModel.fromJson(decodedResponseBody);

    return Tuple2(auction, null);
  }

  Tuple2<AuctionModel?, List<VehicleModel>?> _parseMultipleChoices(
    http.Response response,
  ) {
    final Iterable body = jsonDecode(response.body);
    final vehicles =
        List<VehicleModel>.from(body.map((e) => VehicleModel.fromJson(e)));
    return Tuple2(null, vehicles);
  }
}
