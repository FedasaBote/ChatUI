import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String image;
  const StoryWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.only(right: 8),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red,
            Colors.yellow,
          ],
        ),
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        padding: const EdgeInsets.all(2.0),
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade300,
          backgroundImage: CachedNetworkImageProvider(image),
          // backgroundImage: Image.network(image, fit: BoxFit.cover,).image,
        ),
      ),
    );
  }
}
