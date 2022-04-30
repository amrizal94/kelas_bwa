import 'package:airplane/pages/sign_up.dart';
import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg_gs.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 40 * 2),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Fly Like a Bird',
                    style: whiteTextColor.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Explore new world with us and let\nyourself get an amazing experiences',
                    style: whiteTextColor.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 220,
                    height: 55,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        'Get Started',
                        style: whiteTextColor.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: navyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
