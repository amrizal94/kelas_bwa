import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/pages/day_six_two.dart';

class DaySixOne extends StatefulWidget {
  const DaySixOne({Key? key}) : super(key: key);

  @override
  State<DaySixOne> createState() => _DaySixOneState();
}

class _DaySixOneState extends State<DaySixOne> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              'assets/images/day6_logo.png',
              width: 100,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Text(
            'Which one you wish\nto Upgrade?',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      );
    }

    Widget option(
        int index, String imageUrl, String title, String desc, String subDesc) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width - 2 * 30,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index
                  ? const Color(0xff6050E7)
                  : const Color(0xffD9DEEA),
            ),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 60,
                  height: 60,
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff191919),
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '$desc ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          color: const Color(0xffA3A8B8),
                        ),
                        children: [
                          TextSpan(
                            text: subDesc,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff5343C2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                selectedIndex == index
                    ? Image.asset(
                        'assets/images/day6_ic_check1.png',
                        width: 26,
                      )
                    : const SizedBox(
                        width: 26,
                      ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            header(),
            option(0, 'assets/images/day6_icon1.png', 'Money Security',
                'support', '24/7'),
            const SizedBox(
              height: 24,
            ),
            option(1, 'assets/images/day6_icon2.png', 'Automation',
                'we provide', 'Invoice'),
            const SizedBox(
              height: 24,
            ),
            option(2, 'assets/images/day6_icon3.png', 'Balance Report',
                'can up to', '10k'),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xff6050E7),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upgrade Now',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DaySixTwo(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/day6_icon_arrow1.png',
                        width: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
