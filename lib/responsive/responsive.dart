import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= 380 && screenWidth < 680;
  }

  static bool isTablet(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= 680 && screenWidth < 1100;
  }

  static bool isDesktop(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 1100;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        if (width > 1100) {
          return desktop;
        } else if (width >= 680 && width < 1100) {
          return tablet ?? desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
