import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const ProfileAvatar({
    Key key,
    @required this.imageUrl,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 20.0,
          backgroundImage: CachedNetworkImageProvider(imageUrl),
        ),
        isActive
            ? Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
