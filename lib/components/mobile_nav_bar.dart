import 'package:flutter/material.dart';

class MobileNavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MobileNavBar({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      alignment: Alignment.centerLeft,
      child: IconButton(
        icon: const Icon(
          Icons.menu,
          size: 28,
          color: Colors.white,
        ),
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
    );
  }
}
