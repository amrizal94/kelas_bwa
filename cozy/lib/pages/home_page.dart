import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_navbar_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE : TITLE
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE : POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              width: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    city: City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/city1.png',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/images/city2.png',
                        popular: true),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/city3.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE : RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                SpaceCard(
                  space: Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/space1.png',
                      price: 52,
                      location: 'Bandung, Germany',
                      rating: '4/5'),
                ),
                const SizedBox(
                  height: 30,
                ),
                SpaceCard(
                  space: Space(
                    id: 2,
                    name: 'Roemah Nenek',
                    price: 11,
                    imageUrl: 'assets/images/space2.png',
                    location: 'Seattle, Bogor',
                    rating: '5/5',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SpaceCard(
                  space: Space(
                    id: 3,
                    name: 'Darrling How',
                    price: 20,
                    imageUrl: 'assets/images/space3.png',
                    location: 'Jakarta, Indonesia',
                    rating: '3/5',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE : TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    tips: Tips(
                      id: 1,
                      name: 'City Guidelines',
                      timestamp: 'Updated 20 Apr',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    tips: Tips(
                      id: 2,
                      name: 'Jakarta Fairship',
                      timestamp: 'Updated 11 Dec',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
            color: const Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_mail_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_love_solid.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
