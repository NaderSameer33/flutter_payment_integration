import 'package:flutter/material.dart';
import 'package:payment_integration/core/logic/helper_mehod.dart';
import 'package:payment_integration/core/ui/app_button.dart';
import 'package:payment_integration/core/ui/custom_app_bar.dart';
import 'package:payment_integration/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/custom_creadit_card.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/payment_method.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidatieMode = AutovalidateMode.disabled;
  @override
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
            child: CustomCreaitCard(
              autovalidateMode: _autoValidatieMode,
              formKey: formKey,
            ),
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
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    goTo(context, page: ThankYouView());
                    _autoValidatieMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
