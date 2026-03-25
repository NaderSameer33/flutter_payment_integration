import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckoutItem extends StatelessWidget {
  const CustomCheckoutItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -30,
      right: 0,
      left: 0,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xffD9D9D9),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.green,
          child: SvgPicture.asset(
            height: 28,
            width: 50,
            'assets/images/check.svg',
          ),
        ),
      ),
    );
  }
}
