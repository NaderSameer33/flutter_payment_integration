import 'package:flutter/material.dart';
import 'package:payment_integration/core/ui/app_style.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.topSpacing = 0,
    this.bottomSpacing = 0,
    required this.title, required this.onTap,
  });
  final double topSpacing, bottomSpacing;
  final String title;
  final VoidCallback onTap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: topSpacing, bottom: bottomSpacing),
        height: 73,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff34A853),
        ),
        child: Text(
          title,
          style: AppStyle.style22,
        ),
      ),
    );
  }
}
