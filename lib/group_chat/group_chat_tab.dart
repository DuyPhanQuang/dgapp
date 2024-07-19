import 'dart:ui';

import 'package:demo_app/constants/icon_constants.dart';
import 'package:demo_app/constants/image_constants.dart';
import 'package:demo_app/extension/context_extension.dart';
import 'package:demo_app/theme/theme_color.dart';
import 'package:demo_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'group_chat_content.dart';
import 'widgets/gif_button.dart';

class _BackgroundTab extends StatelessWidget {
  const _BackgroundTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 0, sigmaY: 10.0),
        child: Image.asset(
          ImageConstants.background,
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitHeight,
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
      padding: EdgeInsets.only(
        top: context.queryPaddingTop,
      ),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: AppColor.primaryGradient,
        border: Border.all(
          width: 0.0,
          color: Colors.transparent,
          style: BorderStyle.solid,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 81.0,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 30.0,
                      child: LiteRollingSwitch(
                        onTap: () {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                        value: false,
                        textOn: '',
                        textOff: '',
                        width: 70.0,
                        colorOn: AppColor.primaryTextColor,
                        colorOff: AppColor.primaryTextColor,
                        iconOn: Icons.done,
                        iconOff: Icons.remove_circle_outline,
                        onChanged: (bool state) {
                          print('Current State of SWITCH IS: $state');
                        },
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const InkWell(
                      child: SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: Center(
                          child: SVGWidget(
                            path: IconConstants.menu,
                            width: 30.0,
                            height: 30.0,
                            size: SvgWidgetSize.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.primaryTextColor,
                    border: Border.all(
                      width: 0.0,
                      color: AppColor.primaryTextColor,
                      style: BorderStyle.solid,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.25,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 8.0),
                      GifButton(
                        path: ImageConstants.gif1,
                      ),
                      SizedBox(width: 12.0),
                      GifButton(
                        path: ImageConstants.gif2,
                      ),
                      SizedBox(width: 12.0),
                      GifButton(
                        path: ImageConstants.gif3,
                      ),
                      SizedBox(width: 55.0),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                width: 195.0,
                height: 81.0,
                padding: const EdgeInsets.only(
                  right: 5.0,
                ),
                decoration: const BoxDecoration(
                  color: AppColor.primaryTextColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'LOGO',
                    style: TextStyle(
                        color: AppColor.secondaryTextColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 40.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GroupChatTab extends StatelessWidget {
  const GroupChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          const _BackgroundTab(),
          const Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: _Header(),
          ),
          Positioned.fill(
            top: 81.0 + 5.0 + context.queryPaddingTop,
            child: const GroupChatContent(),
          ),
        ],
      ),
    );
  }
}
