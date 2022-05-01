import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Howdy,\nKezia Anne',
                  style: blackTextColor.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/image_profile.png'),
                    radius: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Where to fly today?',
              style: greyTextColor.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      );
    }

    Widget listCard(
      String? imageUrl,
      double? rate,
      String? name,
      String? city,
    ) {
      return Padding(
        padding: const EdgeInsets.only(
          right: 24,
        ),
        child: Container(
          width: 200,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      imageUrl ?? 'assets/city1.png',
                      height: 220,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 54.5,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(19),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_star.png',
                            width: 24,
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                          Text(
                            '$rate',
                            style: blackTextColor.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  name ?? 'Lake Ciliwung',
                  style: blackTextColor.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  city ?? 'Tangerang',
                  style: greyTextColor.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget newCity(
      String? imageUrl,
      double? rate,
      String? name,
      String? city,
    ) {
      return Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width - 24 * 2,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    imageUrl ?? 'assets/new_city1.png',
                    width: 70,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? 'Danau Beratan',
                      style: blackTextColor.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      city ?? 'Singajara',
                      style: greyTextColor.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_star.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Text(
                      '$rate',
                      style: blackTextColor.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bottomNavbarItem(
      int? index,
      String? imageUrl,
    ) {
      return Column(
        children: [
          const Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index ?? -1;
              });
            },
            child: Image.asset(
              imageUrl ?? 'assets/fi_globe.png',
              width: 24,
              color: selectedIndex == index ? navyColor : greyColor,
            ),
          ),
          const Spacer(),
          selectedIndex == index
              ? Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      color: navyColor,
                      borderRadius: BorderRadius.circular(18)),
                )
              : Container(
                  width: 30,
                  height: 2,
                ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          header(),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 323,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 24,
                ),
                listCard('assets/city1.png', 4.8, 'Lake Ciliwung', 'Tangerang'),
                listCard('assets/city2.png', 4.7, 'White Houses', 'Spain'),
                listCard('assets/city3.png', 4.8, 'Hill Heyo', 'Monaco'),
                listCard('assets/city4.png', 5.0, 'Menarra', 'Japan'),
                listCard('assets/city5.png', 4.8, 'Payung Teduh', 'Singapore'),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New This Year',
                  style: blackTextColor.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                newCity(
                    'assets/new_city1.png', 4.5, 'Danau Beratan', 'Singajara'),
                newCity(
                    'assets/new_city2.png', 4.7, 'Sydney Opera', 'Australia'),
                newCity('assets/new_city3.png', 4.8, 'Roma', 'Italy'),
                newCity(
                    'assets/new_city4.png', 4.5, 'Payung Teduh', 'Singapore'),
                newCity('assets/new_city5.png', 4.7, 'Hill Hey', 'Monaco'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 2 * 24,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomNavbarItem(0, 'assets/fi_globe.png'),
            bottomNavbarItem(1, 'assets/fi_book-open.png'),
            bottomNavbarItem(2, 'assets/fi_credit-card.png'),
            bottomNavbarItem(3, 'assets/fi_settings.png'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
