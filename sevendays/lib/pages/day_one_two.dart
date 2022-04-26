import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/day_one_one.dart';

class DayOneTwo extends StatelessWidget {
  const DayOneTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 118),
          child: Center(
            child: Column(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DayOneOne(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 140,
                  ),
                ),
                const Spacer(),
                Text(
                  'VENTURE',
                  style: GoogleFonts.dmSerifDisplay(
                    textStyle:
                        const TextStyle(color: Colors.white, letterSpacing: 7),
                    fontSize: 32,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
