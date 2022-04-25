import 'package:cozy/models/city.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  const CityCard({Key? key, required this.city}) : super(key: key);

  final City city;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
        ),
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl ?? 'assets/images/city1.png',
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.popular == true
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(36),
                              )),
                          child: Center(
                            child: Image.asset(
                              'assets/images/Icon_star_solid.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              city.name ?? 'Kediri',
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
