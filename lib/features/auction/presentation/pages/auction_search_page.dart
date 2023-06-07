import 'package:vehicles_dealing_flutter_coding_challenge/core/validators/input_validator.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/presentation/bloc/auction_page_manager.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/presentation/bloc/auction_page_state.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/presentation/widgets/auction_description_widget.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/presentation/widgets/failure_state_widget.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/presentation/widgets/last_auction_available_state_widget.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auction/presentation/widgets/vehicles_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../../di_config.dart';
import '../../domain/entities/auction.dart';
import '../../domain/entities/vehicle.dart';

class AuctionSearchPage extends StatefulWidget {
  const AuctionSearchPage({
    super.key,
  });

  @override
  State<AuctionSearchPage> createState() => _AuctionSearchPageState();
}

class _AuctionSearchPageState extends State<AuctionSearchPage> {
  late final AuctionPageManager _auctionPageManager;
  late final InputValidator _inputValidator;

  @override
  void initState() {
    _auctionPageManager = getIt.get<AuctionPageManager>();
    _inputValidator = getIt.get<InputValidator>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Auction Search')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSearchBar(),
              const Divider(
                height: 32.0,
                thickness: 2.0,
              ),
              Expanded(
                child: BlocBuilder<AuctionPageManager, AuctionPageState>(
                  bloc: _auctionPageManager,
                  builder: (_, state) => state.when(
                    (vin, auction, vehicles, failure) => _buildEmptyBody,
                    isLoading: () => _buildLoadingStateBody,
                    populatedWithAuction: (auction) =>
                        AuctionDescriptionWidget(auction: auction),
                    populatedWithVehicles: (vehicles) =>
                        _getVehiclesListWidget(vehicles: vehicles),
                    failure: (failure) =>
                        _getFailureStateWidget(failure: failure),
                    lastAuctionAvailable: (auction, failure) =>
                        _getLastAuctionAvailableStateWidget(
                      failure: failure,
                      auction: auction,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget get _buildEmptyBody => const Center(
        child: Text(
          'The result of the search will be shown here.',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      );

  Widget _getFailureStateWidget({required Failure failure}) =>
      AuctionSearchFailureStateWidget(
        failure: failure,
        onButtonClicked: () => _auctionPageManager.requestAuctionData(
          vin: _inputValidator.getVIN,
        ),
      );

  Widget _getLastAuctionAvailableStateWidget(
          {required Failure failure, required Auction auction}) =>
      LastAuctionAvailableStateWidget(
        failure: failure,
        onTryAgainPressed: () =>
            _auctionPageManager.requestAuctionData(vin: _inputValidator.getVIN),
        onShowLastAuctionPressed: () =>
            _auctionPageManager.showAuction(auction: auction),
      );
  Widget _getVehiclesListWidget({required List<Vehicle> vehicles}) =>
      VehiclesListWidget(
        vehicles: vehicles,

        /// PLEASE NOTE. I didn't really get what to do if the user selects one of the vehicles
        /// Therefore, when tapping a vehicle, just make a new request for auction data
        onVehicleTap: (i) {
          _auctionPageManager.requestAuctionData(
            vin: _inputValidator.getVIN,
          );
        },
      );

  Widget _buildSearchBar() => StreamBuilder<String>(
        stream: _inputValidator.vin$,
        builder: (context, snapshot) => Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: _inputValidator.updateVIN,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        5.0,
                      ),
                    ),
                  ),
                  hintText: "Insert VIN",
                  labelText: "VIN",
                  suffixIcon: IconButton(
                    onPressed: snapshot.data?.isNotEmpty ?? false
                        ? () {
                            _auctionPageManager.requestAuctionData(
                              vin: _inputValidator.getVIN,
                            );
                          }
                        : null,
                    icon: const Icon(Icons.search),
                  ),
                  errorText:
                      snapshot.hasError ? snapshot.error.toString() : null,
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _buildLoadingStateBody => const Center(
        child: CircularProgressIndicator(),
      );
}
