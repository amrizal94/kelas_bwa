import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/day_two_two.dart';

class DayTwoOne extends StatelessWidget {
  const DayTwoOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_get_started.png'),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Maximize Revenue',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: const Color(0xffFFFFFF),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Gain more profit from cryptocurrency\nwithout any risk involved',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xffFFFFFF),
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
                      builder: (context) => const DayTwoTwo(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/btn_purple.png',
                  width: 80,
                ),
              ),
              const SizedBox(
                height: 55,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
