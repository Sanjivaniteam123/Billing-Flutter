import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 480;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 480 &&
      MediaQuery.of(context).size.width <= 890;

  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width > 890 &&
      MediaQuery.of(context).size.width <= 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1100;
}
