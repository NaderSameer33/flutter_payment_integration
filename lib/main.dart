import 'package:flutter/material.dart';

void main() {
  runApp(const PaymentInegration());
}

class PaymentInegration extends StatelessWidget {
  const PaymentInegration({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Payment Integration'),
        ),
      ),
    );
  }
}
