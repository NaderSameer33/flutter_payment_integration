import 'package:flutter/material.dart';
import 'package:payment_integration/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const ChcekOutApp());
}

class ChcekOutApp extends StatelessWidget {
  const ChcekOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyCartView(),
    );
  }
}
