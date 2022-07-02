import 'package:flutter/material.dart';
import 'package:house_design/components/desktop_home_screen_body.dart';
import 'package:house_design/components/mobile_home_screen_body.dart';
import 'package:house_design/components/mobile_nav_bar_drawer.dart';
import 'package:house_design/components/nav_bar.dart';
import 'package:house_design/components/tablet_home_screen_body.dart';
import 'package:house_design/responsive/responsive.dart';

class HomeScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const MobileNavBarDrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/house.jpg', bundle: null),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color.fromARGB(221, 36, 36, 36),
              BlendMode.darken,
            ),
          ),
        ),
        child: ListView(
          children: [
            NavBar(scaffoldKey: scaffoldKey),
            const Responsive(
              mobile: MobileHomeScreenBody(),
              tablet: TabletHomeScreenBody(),
              desktop: DesktopHomeScreenBody(),
            ),
          ],
        ),
      ),
    );
  }
}
