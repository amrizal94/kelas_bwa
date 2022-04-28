import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/day_seven_one.dart';

class DaySixTwo extends StatelessWidget {
  const DaySixTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Image.asset(
              'assets/images/day6_illustration.png',
              width: 164,
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Text(
            'Pro Features',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Text(
            'Unlock the winner modules\nget more insights',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xff7F7FAD),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    Widget option(int index, String title) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 28,
        ),
        child: Column(
          children: [
            index != 0
                ? const SizedBox(
                    height: 26,
                  )
                : const SizedBox(),
            Row(
              children: [
                Image.asset(
                  'assets/images/day6_ic_check.png',
                  width: 26,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                    ))
              ],
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 2 * 28,
            height: 55,
            decoration: BoxDecoration(
              color: const Color(0xffE57C73),
              borderRadius: BorderRadius.circular(31),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 41,
                  ),
                  const Spacer(),
                  Text(
                    'Subscribe Now',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DaySevenOne(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/day6_btn_arrow.png',
                      width: 41,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Contact Support',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff0B073E),
      body: SafeArea(
        child: Column(
          children: [
            header(),
            const SizedBox(
              height: 50,
            ),
            option(0, 'Unlock Our Top Charts'),
            option(1, 'Save More than 1,000 Docs'),
            option(2, '24/7 Customer Support'),
            option(3, 'Track Company’s Spending'),
            const SizedBox(
              height: 58,
            ),
            footer(),
          ],
        ),
      ),
    );
  }
}
