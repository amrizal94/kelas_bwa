import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class BonusSaldo extends StatelessWidget {
  const BonusSaldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(
                  0xff5445E5,
                ),
                borderRadius: BorderRadius.circular(34),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff3F32B2).withOpacity(0.2),
                    spreadRadius: -11,
                    blurRadius: 11,
                    offset: const Offset(0, 22), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: whiteTextColor.copyWith(
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            'Kezia Anne',
                            style: whiteTextColor.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/logo.png',
                        width: 24,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Pay',
                        style: whiteTextColor.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    'Balance',
                    style: whiteTextColor.copyWith(fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'IDR 280.000.000',
                    style: whiteTextColor.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 251,
              child: Column(
                children: [
                  Text(
                    'Big Bonus 🎉',
                    style: blackTextColor.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We give you early credit so that you can buy a flight ticket',
                    style: greyTextColor.copyWith(
                      fontSize: 16,
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
                      onPressed: () {},
                      child: Text(
                        'Start Fly Now',
                        style: whiteTextColor.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
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
          ],
        ),
      ),
    );
  }
}
