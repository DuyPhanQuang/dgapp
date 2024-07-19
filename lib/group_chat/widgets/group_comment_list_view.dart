import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../theme/theme_color.dart';

class _UserPin extends StatelessWidget {
  const _UserPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColor.accentGradient,
        borderRadius: BorderRadius.circular(8.0),
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
      child: SizedBox(
        width: 35.0,
        height: 35.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: CachedNetworkImage(
            imageUrl: "https://picsum.photos/200/300/?blur",
            width: 35.0,
            height: 35.0,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.0,
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F5F7),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          width: 1.0,
          color: Colors.white,
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
      child: Row(
        children: [
          Container(
            width: 44.0,
            height: 36.0,
            decoration: BoxDecoration(
              gradient: AppColor.primaryGradient,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                width: 1.0,
                color: AppColor.primaryColor,
                style: BorderStyle.solid,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(1, 1),
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'Ghim',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primaryTextColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 5.0),
          const _UserPin(),
          const SizedBox(width: 5.0),
          const _UserPin(),
          const SizedBox(width: 5.0),
          const _UserPin(),
          const SizedBox(width: 5.0),
          const _UserPin(),
          const SizedBox(width: 5.0),
          const Expanded(child: SizedBox()),
          const Icon(
            Icons.close,
            size: 32.0,
          ),
          const SizedBox(width: 5.0),
        ],
      ),
    );
  }
}

class GroupChatCommentListView extends StatelessWidget {
  const GroupChatCommentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _Header(),
        Expanded(
          child: Container(),
        ),
        Container(
          width: double.infinity,
          height: 52.0,
          color: Colors.blue,
          margin: const EdgeInsets.all(5.0),
        ),
      ],
    );
  }
}
