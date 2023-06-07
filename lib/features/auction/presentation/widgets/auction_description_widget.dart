import 'package:flutter/material.dart';

import '../../domain/entities/auction.dart';

class AuctionDescriptionWidget extends StatelessWidget {
  final Auction auction;
  const AuctionDescriptionWidget({
    super.key,
    required this.auction,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader,
          const SizedBox(
            height: 16.0,
          ),
          _buildPriceRow,
          const SizedBox(
            height: 16.0,
          ),
          _buildModelRow,
          const SizedBox(
            height: 16.0,
          ),
          _buildUUIDRow,
          const SizedBox(
            height: 16.0,
          ),
          _buildFeedbackRow,
        ],
      );

  Widget get _buildHeader => const Center(
        child: Text(
          "Auction Info",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
        ),
      );

  Widget get _buildPriceRow => RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Price: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: auction.price.toString(),
              style: const TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ],
        ),
      );

  Widget get _buildModelRow => RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Model: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: auction.model,
              style: const TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ],
        ),
      );

  Widget get _buildUUIDRow => RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'UUID: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: auction.fkUuidAuction,
              style: const TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ],
        ),
      );

  Widget get _buildFeedbackRow => RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Feedback: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: auction.positiveCustomerFeedback ? 'Positive' : 'Negative',
              style: const TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ],
        ),
      );
}
