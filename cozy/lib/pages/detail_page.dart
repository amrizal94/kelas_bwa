import 'package:cozy/models/facilities.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/pages/error_page.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/main_facilities.dart';
import 'package:cozy/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.space}) : super(key: key);

  final Space space;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isWishList = false;

  @override
  Widget build(BuildContext context) {
    void _launchURL(String _url) async {
      if (await canLaunch(_url)) {
        launch(_url);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ErrorPage(),
          ),
        );
      }
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.network(
                widget.space.imageUrl ??
                    'https://raw.githubusercontent.com/amrizal94/kelas_bwa/main/image_not_found.png',
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
                              widget.space.name ?? 'Kota Tahu',
                              style: blackTextStyle.copyWith(
                                fontSize: 22,
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                  text: '\$${widget.space.price}',
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
                          children: [1, 2, 3, 4, 5].map((index) {
                            return Container(
                              margin: const EdgeInsets.only(left: 2),
                              child: RatingItem(
                                  index: index, rating: widget.space.rating),
                            );
                          }).toList(),
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
                              count: widget.space.numberOfKitchens,
                              name: ' kitchen',
                            ),
                          ),
                          MainFacilities(
                            facilities: Facilities(
                              id: 2,
                              imageUrl: 'assets/images/icon_bedroom.png',
                              count: widget.space.numberOfBedrooms,
                              name: ' bedroom',
                            ),
                          ),
                          MainFacilities(
                            facilities: Facilities(
                              id: 3,
                              imageUrl: 'assets/images/icon_cupboard.png',
                              count: widget.space.numberOfCupboards,
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
                      children: widget.space.photos!.map((item) {
                        return Container(
                          margin: EdgeInsets.only(left: edge),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              item,
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
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
                              widget.space.address ?? 'Jln. belum diketahu',
                              style: greyTextStyle,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              widget.space.city ?? 'kota belum diketahui',
                              style: greyTextStyle,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            _launchURL(
                                widget.space.mapUrl ?? 'asdasdasasdadasd');
                          },
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
                      onPressed: () {
                        _launchURL('tel:${widget.space.phone}');
                      },
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        isWishList = !isWishList;
                      });
                    },
                    child: Image.asset(
                      isWishList
                          ? 'assets/images/btn_wishlist_filled.png'
                          : 'assets/images/btn_wishlist.png',
                      width: 40,
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
