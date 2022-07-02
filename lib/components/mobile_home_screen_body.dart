import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_design/components/custom_button.dart';

class MobileHomeScreenBody extends StatelessWidget {
  const MobileHomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 60, right: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'DESIGN YOUR \nHOUSE',
              textAlign: TextAlign.center,
              style: GoogleFonts.sansita(
                fontSize: 80,
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
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                  buttonName: 'Watch More',
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
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
