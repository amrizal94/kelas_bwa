import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/day_four_one.dart';
import 'package:sevendays/widgets/text_input.dart';

class DayThreeTwo extends StatelessWidget {
  const DayThreeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 28,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 64,
            ),
            Image.asset(
              'assets/images/day3_image.png',
              width: 245,
              height: 279,
            ),
            const SizedBox(
              height: 52,
            ),
            const TextInput(
              titleText: 'Email Address',
              hintText: 'Email',
            ),
            const SizedBox(
              height: 20,
            ),
            const TextInput(
              titleText: 'Password',
              hintText: 'Password',
              isPassword: true,
            ),
            const SizedBox(
              height: 51,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 55,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff5468FF),
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ))),
                child: Text(
                  'Log In',
                  style: GoogleFonts.openSans(
                    color: const Color(0xffF8F8F8),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DayFourOne(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 55,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffFFFFFF),
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ))),
                child: Text(
                  'Create New Account',
                  style: GoogleFonts.openSans(
                    color: const Color(0xffCFCFCF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
