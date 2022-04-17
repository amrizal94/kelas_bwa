import 'package:cozy/models/facilities.dart';
import 'package:cozy/models/photos.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/main_facilities.dart';
import 'package:cozy/widgets/photo_card.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/images/thumbnail.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            ListView(children: [
              const SizedBox(
                height: 315,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor),
                child: Column(children: [
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
                                  style: purpleTextStyle.copyWith(fontSize: 16),
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
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
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
                              name: ' kitchen',
                            ),
                          ),
                          MainFacilities(
                            facilities: Facilities(
                              id: 2,
                              imageUrl: 'assets/images/icon_bedroom.png',
                              count: 3,
                              name: ' bedroom',
                            ),
                          ),
                          MainFacilities(
                            facilities: Facilities(
                              id: 3,
                              imageUrl: 'assets/images/icon_cupboard.png',
                              count: 3,
                              name: ' Big Lemari',
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                    ),
                    child: Row(children: [
                      Text('Photo',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          )),
                    ]),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 88,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: edge,
                        ),
                        PhotoCard(
                          photos: Photos(
                            imageUrl: 'assets/images/photo1.png',
                          ),
                        ),
                        PhotoCard(
                          photos: Photos(
                            imageUrl: 'assets/images/photo2.png',
                          ),
                        ),
                        PhotoCard(
                          photos: Photos(
                            imageUrl: 'assets/images/photo3.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                    ),
                    child: Row(children: [
                      Text(
                        'Location',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 6,
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
                              'Jln. Kappan Sukses No. 20',
                              style: greyTextStyle,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Palembang',
                              style: greyTextStyle,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/btn_map.png',
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 327,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(purpleColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ]),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/images/btn_wishlist.png',
                    width: 40,
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
