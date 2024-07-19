import 'package:demo_app/theme/theme_color.dart';
import 'package:flutter/material.dart';

import '../../constants/image_constants.dart';

class GroupChatThumbnailLiveVideo extends StatelessWidget {
  const GroupChatThumbnailLiveVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 215.0,
      child: Stack(
        children: [
          Positioned.fill(
            child: SizedBox(
              width: double.infinity,
              height: 215.0,
              child: Image.asset(
                ImageConstants.thumbnail,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: InkWell(
              child: Container(
                width: 168.0,
                height: 40.0,
                decoration: BoxDecoration(
                  gradient: AppColor.primaryGradient,
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    width: 2.0,
                    color: AppColor.primaryColor,
                    style: BorderStyle.solid,
                  ),
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
                child: const Center(
                  child: Text(
                    'VAO PHONG LIVE',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 5.0,
            bottom: 10.0,
            child: Container(),
          ),
        ],
      ),
    );
  }
}