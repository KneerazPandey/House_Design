import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_design/components/custom_button.dart';

class DesktopHomeScreenBody extends StatelessWidget {
  const DesktopHomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 180, left: 80, right: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'DESIGN YOUR HOUSE',
              style: GoogleFonts.sansita(
                fontSize: 96,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'My name is Niraj Pandey and I am full \nstack developer',
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  buttonName: 'Watch More',
                  onPressed: () {},
                ),
                const SizedBox(width: 60),
                CustomButton(
                  buttonName: 'Subscribe',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
