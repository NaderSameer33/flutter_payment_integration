import 'package:flutter/material.dart';
import 'package:payment_integration/core/ui/app_style.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/order_info.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/thank_you_card_item.dart';
import 'package:payment_integration/features/checkout/presentation/views/widget/thank_you_item_scanner.dart';

class ThankYouBodyItem extends StatelessWidget {
  const ThankYouBodyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Text(
              'Thank you!',
              style: AppStyle.styel25,
            ),
            Text(
              'Your transaction was successful',
              style: AppStyle.style20,
            ),
            SizedBox(
              height: 40,
            ),
            OrderInfo(title: 'Date', value: '01/24/2023'),
            SizedBox(
              height: 20,
            ),
            OrderInfo(title: 'Time', value: '10:15 AM'),
            SizedBox(
              height: 20,
            ),
            OrderInfo(title: 'To', value: 'Sam Louis'),
            Divider(
              thickness: 2,
              height: 60,
            ),
            OrderInfo(
              title: 'Total',
              value: r'$50.97',
              isTotal: true,
            ),
            SizedBox(
              height: 30,
            ),
            ThankYouCarditem(),
            Spacer(),
            ThankYouItemScanner(),
            SizedBox(
              height: 85 - 20,
            ),
          ],
        ),
      ),
    );
  }
}
