import 'package:cozy/models/facilities.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/main_facilities.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/images/thumbnail.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/btn_back.png',
                    width: 40,
                  ),
                  Image.asset(
                    'assets/images/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 315,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: whiteColor),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: '\$52',
                                      style: purpleTextStyle.copyWith(
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                          text: ' / month',
                                          style: greyTextStyle.copyWith(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/Icon_star_solid.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/images/Icon_star_solid.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/images/Icon_star_solid.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/images/Icon_star_solid.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/images/Icon_star_solid.png',
                                  width: 20,
                                  color: const Color(0xff989BA1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: edge,
                  ),
                  child: Text(
                    'Main Facilities',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MainFacilities(
                        facilities: Facilities(
                            id: 1,
                            imageUrl: 'assets/images/icon_kitchen.png',
                            count: 2,
                            name: ' kitchen'),
                      ),
                      MainFacilities(
                        facilities: Facilities(
                            id: 2,
                            imageUrl: 'assets/images/icon_bedroom.png',
                            count: 3,
                            name: ' bedroom'),
                      ),
                      MainFacilities(
                        facilities: Facilities(
                            id: 3,
                            imageUrl: 'assets/images/icon_cupboard.png',
                            count: 3,
                            name: ' Big Lemari'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
