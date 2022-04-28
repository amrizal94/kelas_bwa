import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widgets/list_cart.dart';

class DaySevenOne extends StatelessWidget {
  const DaySevenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          Center(
            child: Text(
              'My Shopping Cart',
              style: GoogleFonts.poppins(
                  color: const Color(0xff191919),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      );
    }

    Widget invoice() {
      return Container(
        width: MediaQuery.of(context).size.width - 2 * 30,
        height: 161,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Informations',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff191919),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub total',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: const Color(0xff191919),
                    ),
                  ),
                  Text(
                    '\$600.00',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff191919),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: const Color(0xff191919),
                    ),
                  ),
                  Text(
                    '\$80.00',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff191919),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: const Color(0xff191919),
                    ),
                  ),
                  Text(
                    '\$680.00',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff191919),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0XffFAFAFA),
      body: SafeArea(
          child: Column(
        children: [
          header(),
          const SizedBox(
            height: 30,
          ),
          const ListCard(
            imageUrl: 'assets/images/day7_burger.png',
            title: 'Burger Malleta',
            desc: 'McTheone',
            count: '2',
            price: '\$90.00',
          ),
          const SizedBox(
            height: 26,
          ),
          const ListCard(
            imageUrl: 'assets/images/day7_mojito.png',
            title: 'Mojito Orange',
            desc: 'The Bar',
            count: '5',
            price: '\$510.00',
          ),
          const SizedBox(
            height: 26,
          ),
          invoice(),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 2 * 30,
            height: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffFFC532),
                  shadowColor: const Color(0xffFFC532),
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  )),
              onPressed: () {},
              child: Text(
                'Checkout Now',
                style: GoogleFonts.poppins(
                    color: const Color(0xff2E221B),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 2 * 30,
            height: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  )),
              onPressed: () {},
              child: Text(
                'Checkout Now',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
