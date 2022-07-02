import 'package:flutter/material.dart';
import 'package:house_design/components/desktop_nav_bar.dart';
import 'package:house_design/components/mobile_nav_bar.dart';
import 'package:house_design/responsive/responsive.dart';

class NavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const NavBar({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileNavBar(scaffoldKey: scaffoldKey),
      tablet: MobileNavBar(scaffoldKey: scaffoldKey),
      desktop: const DesktopNavBar(),
    );
  }
}
