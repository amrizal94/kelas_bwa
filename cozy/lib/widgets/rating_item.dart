import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({Key? key, required this.index, this.rating})
      : super(key: key);

  final int index;

  final int? rating;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating!
          ? 'assets/images/Icon_star_solid.png'
          : 'assets/images/Icon_star_grey.png',
      width: 20,
    );
  }
}
