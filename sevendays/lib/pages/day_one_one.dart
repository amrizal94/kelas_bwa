import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayOneOne extends StatelessWidget {
  const DayOneOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash_image.png',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 77,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/images/icon_home.png',
                        width: 51,
                      ),
                    ),
                    const SizedBox(
                      width: 13.6,
                    ),
                    Text(
                      'HouseQu',
                      style: GoogleFonts.montserrat(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
