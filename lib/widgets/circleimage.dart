import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String imageUrl;
  const CircleImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      width: 110,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
