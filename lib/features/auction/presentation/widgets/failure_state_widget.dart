import 'package:vehicles_dealing_flutter_coding_challenge/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/error/failures.dart';

class AuctionSearchFailureStateWidget extends StatelessWidget {
  final Failure failure;
  final VoidCallback onButtonClicked;
  const AuctionSearchFailureStateWidget({
    super.key,
    required this.failure,
    required this.onButtonClicked,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(failure.title),
            const SizedBox(
              height: 16.0,
            ),
            if (failure.message != null) ...[
              Text(failure.message!),
              const SizedBox(
                height: 16.0,
              ),
            ],
            CustomButton(text: 'Try again', onPressed: onButtonClicked),
          ],
        ),
      );
}
