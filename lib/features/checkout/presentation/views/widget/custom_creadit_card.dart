import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreaitCard extends StatefulWidget {
  const CustomCreaitCard({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<CustomCreaitCard> createState() => _CustomCreaitCardState();
}

class _CustomCreaitCardState extends State<CustomCreaitCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;

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
          cardHolderValidator: (value) {
            if (value == null || value.isEmpty) {
              return 'please input a valid data';
            } else {
              return null;
            }
          },
          autovalidateMode: widget.autovalidateMode,
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
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
