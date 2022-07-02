import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_design/constants/menus.dart';
import 'package:house_design/controllers/controllers.dart';

class MobileNavBarDrawer extends StatelessWidget {
  const MobileNavBarDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Drawer(
        backgroundColor: const Color.fromARGB(221, 66, 65, 65),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              alignment: Alignment.center,
              child: Text(
                'Kneeraz',
                style: GoogleFonts.sansita(
                  fontSize: 38,
                  color: Colors.white,
                ),
              ),
            ),
            const Divider(color: Colors.black),
            const SizedBox(height: 30),
            Column(
              children: List.generate(
                menus.length,
                (index) => InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  onHover: (bool value) {
                    value
                        ? menuController.setHoverMenuItem(menus[index])
                        : menuController.setHoverMenuItem('none');
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    color: menuController.hoverMenuItem == menus[index]
                        ? const Color(0xFF009688)
                        : Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    margin: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      menus[index],
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: menuController.hoverMenuItem == menus[index]
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
