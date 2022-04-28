import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/day_six_one.dart';

class DayFiveTwo extends StatelessWidget {
  const DayFiveTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 28,
        ),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/day5_image2.png',
                width: 294.75,
                height: 210,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Enjoy Your Meal',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff121622),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Please rate our experience',
                style: GoogleFonts.poppins(
                    fontSize: 16, color: const Color(0xff808EAB)),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/day5_stars.png',
                width: 290,
                height: 50,
              ),
              const SizedBox(
                height: 36,
              ),
              TextField(
                maxLines: 10,
                minLines: 7,
                decoration: InputDecoration(
                  hintText: 'Your message',
                  hintStyle: GoogleFonts.poppins(
                    color: const Color(0xff808EAB),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DaySixOne(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xff4074E6),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Align(
                    child: Text(
                      'Submit Review',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
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
      ),
    );
  }
}
