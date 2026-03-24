import 'package:flutter/material.dart';
import 'package:payment_integration/core/ui/custom_app_bar.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/my_cart_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Cart',
      ),
      body: MyCartViewBody(),
    );
  }
}
