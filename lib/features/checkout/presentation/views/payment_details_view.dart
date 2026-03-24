import 'package:flutter/material.dart';
import 'package:payment_integration/core/ui/custom_app_bar.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/payment_method.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Payment Details'),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          PaymentMethod(),
        ],
      ),
    );
  }
}
