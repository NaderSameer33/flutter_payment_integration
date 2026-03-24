import 'package:flutter/cupertino.dart';

void goTo(BuildContext context, {required Widget page}) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) => page));
}
