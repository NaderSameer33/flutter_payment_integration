
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreaitCard extends StatefulWidget {
  const CustomCreaitCard({
    super.key,
  });

  @override
  State<CustomCreaitCard> createState() => _CustomCreaitCardState();
}

class _CustomCreaitCardState extends State<CustomCreaitCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          chipColor: Colors.white,
          cardBgColor: Colors.black,
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (model) {
            cardNumber = model.cardNumber;
            expiryDate = model.expiryDate;
            cardHolderName = model.cardHolderName;
            cvvCode = model.cvvCode;
            showBackView = model.isCvvFocused;
            setState(() {});
          },
          formKey: formKey,
        ),
      ],
    );
  }
}

