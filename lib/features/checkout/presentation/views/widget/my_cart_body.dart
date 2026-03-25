import 'package:flutter/material.dart';
import 'package:payment_integration/core/logic/helper_mehod.dart';
import 'package:payment_integration/core/ui/app_button.dart';
import 'package:payment_integration/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/cusotm_bottom_sheet.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/order_info.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 24),
          Expanded(
            child: Image.asset(
              'assets/images/cart.png',
            ),
          ),
          SizedBox(
            height: 25,
          ),
          OrderInfo(title: 'Order Subtotal', value: r'$42.97'),
          SizedBox(
            height: 3,
          ),
          OrderInfo(title: 'Discount', value: r'$0'),
          SizedBox(
            height: 3,
          ),
          OrderInfo(title: 'Shipping', value: r'$8'),
          Divider(
            color: Color(0xffC7C7C7),
            thickness: 2,
            height: 34,
          ),
          OrderInfo(
            title: 'Total',
            value: r'$50.97',
            isTotal: true,
          ),
          AppButton(
            title: 'Complete Payment',
            topSpacing: 16,
            bottomSpacing: 25,
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => CustomBottomSheet(),
              );
            },
          ),
        ],
      ),
    );
  }
}
