import 'package:flutter/material.dart';
import 'package:payment_integration/core/ui/custom_app_bar.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/cusotm_check_out_item.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/custom_dashed_border.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/thank_you_body_item.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ''),
      body: Transform.translate(
        offset: Offset(0, -20),

        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ThankYouBodyItem(),
              Positioned(
                left: -20,
                bottom: 150,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                right: -20,
                bottom: 150,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),

              CustomDasedBorder(),
              CustomCheckoutItem(),
            ],
          ),
        ),
      ),
    );
  }
}
