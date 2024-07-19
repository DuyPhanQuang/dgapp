import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

class GifButton extends StatelessWidget {
  const GifButton({
    super.key,
    required this.path,
    this.onTapped,
    this.width,
    this.height,
  });

  final VoidCallback? onTapped;
  final String path;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: SizedBox(
        width: 36.0,
        height: 36.0,
        child: Center(
          child: GifView.asset(
            path,
            height: height ?? 28.0,
            width: width ?? 28.0,
            frameRate: 30, // default is 15 FPS
          ),
        ),
      ),
    );
  }
}
