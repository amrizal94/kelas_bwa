import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/day_four_two.dart';

class DayFourOne extends StatelessWidget {
  const DayFourOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/day_4_illustration.png',
              width: 239.72,
              height: 210,
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              'Success Order',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color(0xff0E1954),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'We will delivery your package\nas soon as possible',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color(0xff0E1954),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DayFourTwo(),
                  ),
                );
              },
              child: Container(
                width: 200,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xffF94593),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Align(
                  child: Text(
                    'Done',
                    style: GoogleFonts.openSans(
                      color: const Color(0xffF8F8F8),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
