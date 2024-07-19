import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../theme/theme_color.dart';

class CommentatorItem extends StatefulWidget {
  const CommentatorItem({super.key});

  @override
  State<CommentatorItem> createState() => _CommentatorItemState();
}

class _CommentatorItemState extends State<CommentatorItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 35.0,
      margin: const EdgeInsets.only(
        top: 3.0,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 11,
            offset: const Offset(0, 5),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.09),
            spreadRadius: 0,
            blurRadius: 20,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            width: 20.0,
            height: 20.0,
            child: Stack(
              children: [
                SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: CachedNetworkImage(
                      imageUrl: "https://picsum.photos/200/300",
                      width: 20.0,
                      height: 20.0,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                Positioned(
                  top: 14.0,
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: Container(
                    height: 14.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: const Text(
                      'LIVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 4.0,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'BLV',
            style: TextStyle(
              fontSize: 6.0,
              fontWeight: FontWeight.w400,
              color: AppColor.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
