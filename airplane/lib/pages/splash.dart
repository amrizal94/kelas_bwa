import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/logo.png',
              width: 100,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'AIRPLANE',
            style: whiteTextColor.copyWith(
                fontSize: 32, fontWeight: FontWeight.w500, letterSpacing: 9.8),
          )
        ],
      ),
    );
  }
}
