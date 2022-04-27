import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/day_three_one.dart';
import 'package:sevendays/theme.dart';

class DayTwoTwo extends StatelessWidget {
  const DayTwoTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                'Health First.',
                style: blackTextColor.copyWith(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Exercise together with our best\ncommunity fit in the world',
                style: greyTextColor.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 402,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/gallery.png'),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 71,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DayThreeOne(),
                      ),
                    );
                  },
                  child: Text(
                    'Shape My Body',
                    style: GoogleFonts.lato(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(greenColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Terms & Conditions',
                  style: lightTextColor.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
