import 'package:flutter/material.dart';
import 'package:payment_integration/core/logic/helper_mehod.dart';
import 'package:payment_integration/core/ui/app_button.dart';
import 'package:payment_integration/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/payment_method.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            PaymentMethod(),
            SizedBox(
              height: 10,
            ),
            AppButton(
              title: 'continue',
              onTap: () {
                goTo(context, page: PaymentDetailsView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
