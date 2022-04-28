import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaySevenTwo extends StatefulWidget {
  const DaySevenTwo({Key? key}) : super(key: key);

  @override
  State<DaySevenTwo> createState() => _DaySevenTwoState();
}

class _DaySevenTwoState extends State<DaySevenTwo> {
  int indexSelected = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(100)),
            child: Image.asset(
              'assets/images/day7_bali.png',
              width: 436,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Arrina La',
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Bali, Dekat Bandung',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: const Color(0xff2F323A),
            ),
          ),
        ],
      );
    }

    Widget about() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Booking Now',
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }

    Widget listBook(int index, bool isAvailable, String day, String date) {
      return Row(
        children: [
          const SizedBox(
            width: 24,
          ),
          InkWell(
            onTap: () {
              setState(() {
                indexSelected = index;
              });
            },
            child: Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                color: isAvailable ? Colors.white : const Color(0xffF4F4F6),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: indexSelected == index
                        ? Image.asset(
                            'assets/images/day7_selected_icon.png',
                            width: 27,
                            height: 25,
                          )
                        : const SizedBox(
                            width: 27,
                            height: 25,
                          ),
                  ),
                  Text(
                    day,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    date,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xffA8ACB6),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFBFF),
      body: Column(
        children: [
          header(),
          const SizedBox(
            height: 26,
          ),
          about(),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listBook(0, true, 'THU', '19 JAN'),
                listBook(1, true, 'FRI', '20 JAN'),
                listBook(2, true, 'SAT', '21 JAN'),
                listBook(3, true, 'SUN', '22 JAN'),
                listBook(4, true, 'MON', '23 JAN'),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                      text: '\$22,800',
                      style: GoogleFonts.poppins(
                          color: const Color(0xff3F6DF6),
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: '/night',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff2F323A),
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ]),
                ),
                SizedBox(
                  width: 220,
                  height: 60,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xff3F6DF6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffFAFAFA)),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
