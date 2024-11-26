import 'package:flutter/material.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: SizedBox(
          width: 180,
          child: CustomText(
            text: name,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            style: const TextStyle(
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black45,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              image,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
