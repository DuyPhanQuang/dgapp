import 'package:demo_app/constants/icon_constants.dart';
import 'package:demo_app/group_chat/widgets/group_match_odd.dart';
import 'package:demo_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';

import '../constants/image_constants.dart';
import '../theme/theme_color.dart';
import 'widgets/group_comment_list_view.dart';
import 'widgets/group_commentator.dart';
import 'widgets/group_thumnail_live_video.dart';

class _SubInfo extends StatelessWidget {
  const _SubInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.only(
        top: 50.0,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GroupMatchOdd(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.0,
            ),
            child: SizedBox(
              width: 130.0,
            ),
          ),
          GroupMatchOdd(),
        ],
      ),
    );
  }
}

class _CustomInfo extends StatelessWidget {
  const _CustomInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                gradient: AppColor.secondaryGradient,
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                  width: 1.0,
                  color: AppColor.primaryTextColor,
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
            ),
          ),
          Positioned(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFF8E889),
                          Color(0xFFF8E889),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment(0.8, 1),
                        tileMode: TileMode.mirror,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                      ),
                    ),
                  ),
                  Container(
                    width: 130.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      gradient: AppColor.primaryGradient,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: AppColor.primaryColor,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 5.0),
                        Text(
                          'NGOAI HANG ANH',
                          style: TextStyle(
                            color: AppColor.primaryTextColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          '0 : 1',
                          style: TextStyle(
                            color: AppColor.primaryTextColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Ty le keo',
                          style: TextStyle(
                            color: AppColor.primaryTextColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20.0,
                              height: 20.0,
                              child: SVGWidget(
                                path: IconConstants.add,
                                width: 20.0,
                                height: 20.0,
                                size: SvgWidgetSize.none,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 3.0,
                                horizontal: 10.5,
                              ),
                              child: Text(
                                'SBOBET',
                                style: TextStyle(
                                  color: AppColor.primaryTextColor,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                              height: 20.0,
                              child: SVGWidget(
                                path: IconConstants.add,
                                width: 20.0,
                                height: 20.0,
                                size: SvgWidgetSize.none,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFF8E889),
                          Color(0xFFF8E889),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment(0.8, 1),
                        tileMode: TileMode.mirror,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: SizedBox(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 5.0),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Text(
                            'MAN CITY',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: AppColor.primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                width: 1.0,
                                color: AppColor.primaryTextColor,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Image.asset(
                              ImageConstants.teamRight,
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                              width: 46.0,
                              height: 46.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 130.0),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                width: 1.0,
                                color: AppColor.primaryTextColor,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Image.asset(
                              ImageConstants.teamRight,
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                              width: 46.0,
                              height: 46.0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        const Expanded(
                          child: Text(
                            'BRIGHTON',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: AppColor.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GroupChatContent extends StatelessWidget {
  const GroupChatContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            width: double.infinity,
            height: 50.0,
            child: Image.asset(
              ImageConstants.phongliveHeader,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            height: 5.0,
            decoration: BoxDecoration(
              gradient: AppColor.primaryGradient,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              border: Border.all(
                width: 0.0,
                color: Colors.transparent,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            color: const Color(0xFFF4F5F7),
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 5.0,
              top: 5.0,
            ),
            child: const SizedBox(
              height: 100.0,
              child: Stack(
                children: [
                  _SubInfo(),
                  _CustomInfo(),
                ],
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: GroupCommentator(),
        ),
        const SliverToBoxAdapter(
          child: GroupChatThumbnailLiveVideo(),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 10.0,
          ),
          sliver: SliverToBoxAdapter(
          child: Container(
            height: 475.0,
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  width: 1.0,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
            ),
            child: const GroupChatCommentListView(),
          ),
        ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 250.0,
            color: Colors.red,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 250.0,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}
