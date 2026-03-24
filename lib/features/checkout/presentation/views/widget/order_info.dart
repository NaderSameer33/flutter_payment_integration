import 'package:flutter/material.dart';
import 'package:payment_integration/core/ui/app_style.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({
    super.key,
    required this.title,
    required this.value,
    this.isTotal = false,
  });
  final String title, value;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: isTotal ? AppStyle.style24 : AppStyle.style18,
        ),
        Spacer(),
        Text(
          value,
          style: isTotal ? AppStyle.style24 : AppStyle.style18,
        ),
      ],
    );
  }
}