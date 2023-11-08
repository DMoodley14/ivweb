import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

TextStyle kAppBarTextstyle =
    TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600);

TextStyle kPageHeading(context) {
  return TextStyle(
    color: Colors.white,
    fontSize: ResponsiveValue<double>(context, conditionalValues: [
      Condition.equals(name: MOBILE, value: 17),
      Condition.equals(name: TABLET, value: 18),
      Condition.equals(name: DESKTOP, value: 24),
      Condition.equals(name: '4K', value: 28)
    ]).value,
    fontWeight: FontWeight.bold,
  );
}

TextStyle kPageSubHeading(context) {
  return TextStyle(
      color: Colors.white,
      fontSize: ResponsiveValue<double>(context, conditionalValues: [
        Condition.equals(name: MOBILE, value: 15),
        Condition.equals(name: TABLET, value: 18),
        Condition.equals(name: DESKTOP, value: 20),
        Condition.equals(name: '4K', value: 22)
      ]).value,
      fontWeight: FontWeight.bold);
}

TextStyle kAppDraw(context) {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
}
