import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ServiceImage extends StatelessWidget {
  const ServiceImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.contain,
          errorWidget: (context, url, _) {
            return Container(
              color: Colors.grey,
            );
          },
        ),
      ),
    );
  }
}
