import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayFourTwo extends StatelessWidget {
  const DayFourTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B33),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/day_4_illustration_2.png',
              width: 375,
              height: 454,
            ),
            const SizedBox(
              height: 62,
            ),
            Text(
              'Boost Profit!',
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Our tools are helping business\nto grow much faster',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 59,
            ),
            Image.asset(
              'assets/images/day_4_btn_rocket.png',
              width: 65,
            ),
          ],
        ),
      ),
    );
  }
}
