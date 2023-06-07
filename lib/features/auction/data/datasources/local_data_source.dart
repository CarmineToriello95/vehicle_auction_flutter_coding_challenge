import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/auction_model.dart';

// ignore: constant_identifier_names
const String _LOCAL_STORAGE_AUCTION_KEY = 'auction';

abstract class AuctionLocalDataSource {
  Future<AuctionModel?> retrieveAuction();

  Future<void> saveAuction({required AuctionModel auctionModel});
}

@Injectable(as: AuctionLocalDataSource)
class AuctionLocalDataSourceImpl implements AuctionLocalDataSource {
  final SharedPreferences _sharedPreferences;

  AuctionLocalDataSourceImpl(this._sharedPreferences);

  @override
  Future<AuctionModel?> retrieveAuction() {
    final encodedString =
        _sharedPreferences.getString(_LOCAL_STORAGE_AUCTION_KEY);
    if (encodedString == null) return Future.value();
    return Future.value(AuctionModel.fromJson(jsonDecode(encodedString)));
  }

  @override
  Future<void> saveAuction({required AuctionModel auctionModel}) async =>
      await _sharedPreferences.setString(
        _LOCAL_STORAGE_AUCTION_KEY,
        jsonEncode(
          auctionModel.toJson(),
        ),
      );
}
