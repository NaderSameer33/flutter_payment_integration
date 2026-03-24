import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  final List<String> imagesList = [
    'assets/images/card.svg',
    'assets/images/pay_pal.svg',
    'assets/images/pay.svg',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        imagesList.length,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Container(
            height: 62,
            width: 104,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: currentIndex == index
                      ? Color(0xff34A853)
                      : Color(0xff000000).withValues(alpha: 50),
                  width: 1.5,
                ),
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                imagesList[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
