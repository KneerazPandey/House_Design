import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_design/constants/menus.dart';
import 'package:house_design/controllers/controllers.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Kneeraz',
                style: GoogleFonts.sansita(
                  fontSize: 38,
                  color: Colors.white,
                ),
              ),
              Row(
                children: List.generate(
                  menus.length,
                  (index) => InkWell(
                    onTap: () {},
                    onHover: (bool value) {
                      value
                          ? menuController.setHoverMenuItem(menus[index])
                          : menuController.setHoverMenuItem('none');
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        border: menuController.hoverMenuItem == menus[index]
                            ? const Border(
                                bottom: BorderSide(
                                  color: Color(0xFF009688),
                                  width: 3.5,
                                ),
                              )
                            : null,
                      ),
                      child: Text(
                        menus[index],
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
