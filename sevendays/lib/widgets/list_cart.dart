import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCard extends StatelessWidget {
  const ListCard(
      {Key? key, this.imageUrl, this.title, this.desc, this.price, this.count})
      : super(key: key);
  final String? imageUrl;
  final String? title;
  final String? desc;
  final String? price;
  final String? count;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 2 * 30,
      height: 140,
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imageUrl ?? 'assets/images/day7_burger.png',
                  width: 80,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/day7_icon_min.png',
                      width: 22,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      count ?? '2',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff191919),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/day7_icon_plus.png',
                      width: 22,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? 'Burger Malleta',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff191919),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  desc ?? 'McTheone',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: const Color(0xffA3A8B8),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                price ?? '\$90.00',
                style: GoogleFonts.poppins(
                    color: const Color(0xff191919),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
