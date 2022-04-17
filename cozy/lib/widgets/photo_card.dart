import 'package:cozy/models/photos.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({Key? key, this.photos}) : super(key: key);

  final Photos? photos;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(photos?.imageUrl ?? 'assets/images/photo1.png'),
        const SizedBox(
          width: 18,
        ),
      ],
    );
  }
}
