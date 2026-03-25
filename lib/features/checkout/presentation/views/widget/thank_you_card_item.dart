import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_integration/core/ui/app_style.dart';

class ThankYouCarditem extends StatelessWidget {
  const ThankYouCarditem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 72,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          SizedBox(
            width: 22,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Credit Card',
                style: AppStyle.style18,
              ),
              Text(
                'Mastercard0078',
                style: AppStyle.style18.copyWith(
                  fontSize: 16,
                  color: Colors.black.withValues(alpha: .7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
