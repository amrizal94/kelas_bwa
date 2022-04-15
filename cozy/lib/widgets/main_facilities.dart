import 'package:cozy/models/facilities.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class MainFacilities extends StatelessWidget {
  const MainFacilities({Key? key, this.facilities}) : super(key: key);

  final Facilities? facilities;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          facilities?.imageUrl ?? 'assets/images/icon_kitchen.png',
          width: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '${facilities?.count}',
            style: purpleTextStyle,
            children: [
              TextSpan(
                  text: facilities?.name ?? ' kitchen', style: regularTextStyle)
            ],
          ),
        ),
      ],
    );
  }
}
