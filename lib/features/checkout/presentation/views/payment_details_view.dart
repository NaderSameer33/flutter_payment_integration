import 'package:flutter/material.dart';
import 'package:payment_integration/core/ui/app_button.dart';
import 'package:payment_integration/core/ui/custom_app_bar.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/custom_creadit_card.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/payment_method.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Payment Details'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: PaymentMethod(),
          ),
          SliverToBoxAdapter(
            child: CustomCreaitCard(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AppButton(
                rightSpacing: 20,
                leftSpacing: 20,

                bottomSpacing: 10,
                title: 'pay',
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
