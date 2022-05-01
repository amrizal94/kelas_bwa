import 'package:airplane/pages/bonus_saldo.dart';
import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget formInput(double index, String title, bool pass) {
      return Padding(
        padding: EdgeInsets.only(
          top: index != 0 ? 20 : 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: blackTextColor,
            ),
            const SizedBox(
              height: 6,
            ),
            TextField(
              obscureText: pass ? true : false,
              style: blackTextColor.copyWith(fontSize: 16),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Join us and get\nyour next journey',
                style: blackTextColor.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    formInput(0, 'Full Name', false),
                    formInput(1, 'Email Address', false),
                    formInput(2, 'Password', true),
                    formInput(3, 'Hobby', false),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BonusSaldo(),
                            ),
                          );
                        },
                        child: Text(
                          'Get Started',
                          style: whiteTextColor.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: navyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text('Terms and Conditions',
                    style: greyTextColor.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
