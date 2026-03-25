import 'package:flutter/cupertino.dart';
import 'package:payment_integration/core/ui/app_style.dart';

class ThankYouItemScanner extends StatelessWidget {
  const ThankYouItemScanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/scanner.png'),
        Container(
          alignment: Alignment.center,
          height: 58,
          width: 113,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: Color(0xff34A853),
                width: 1.5,
              ),
            ),
          ),
          child: Text(
            'PAID',
            style: AppStyle.style24.copyWith(
              color: Color(0xff34A853),
            ),
          ),
        ),
      ],
    );
  }
}
