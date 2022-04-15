import 'package:cozy/models/tips.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({Key? key, required this.tips}) : super(key: key);

  final Tips tips;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl ?? 'assets/images/tips1.png',
          width: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.name ?? 'City Guidelines',
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              tips.timestamp ?? 'Updated 20 Apr',
              style: greyTextStyle,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        )
      ],
    );
  }
}
