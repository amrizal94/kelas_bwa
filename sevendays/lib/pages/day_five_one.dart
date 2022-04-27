import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/day_five_two.dart';

class DayFiveOne extends StatelessWidget {
  const DayFiveOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181925),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 37,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Center(
              child: Image.asset(
                'assets/images/day_5_pizza.png',
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Pizza Ballado',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Center(
              child: Text(
                '\$90,00',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Text(
              'Was it delicious?',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/day5_emoji1.png',
                  width: 60,
                ),
                Image.asset(
                  'assets/images/day5_emoji2.png',
                  width: 60,
                ),
                Image.asset(
                  'assets/images/day5_emoji3.png',
                  width: 60,
                ),
                Image.asset(
                  'assets/images/day5_emoji4.png',
                  width: 60,
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            Center(
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DayFiveTwo(),
                    ),
                  );
                }),
                child: Container(
                  width: 211,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xff34D186),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Align(
                    child: Text(
                      'Rate Now',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
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
