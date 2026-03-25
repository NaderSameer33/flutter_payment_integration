import 'package:flutter/cupertino.dart';

class CustomDasedBorder extends StatelessWidget {
  const CustomDasedBorder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 170,
      right: 0,
      left: 0,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
        child: Row(
          children: List.generate(
            40,
            (index) => Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 2),
                height: 1,
                decoration: BoxDecoration(
                  color: Color(0xffB8B8B8),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
