import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:demo_app/constants/icon_constants.dart';
import 'package:demo_app/extension/context_extension.dart';
import 'package:demo_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'group_chat/group_chat_tab.dart';
import 'theme/theme_color.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final PageController _pageController = PageController(initialPage: 0);
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(),
          const GroupChatTab(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: AnimatedNotchBottomBar(
          notchBottomBarController: _controller,
          onTap: (index) {
            _pageController.jumpToPage(index);
          },
          kIconSize: 24.0,
          color: AppColor.primaryColor,
          showLabel: true,
          textOverflow: TextOverflow.visible,
          maxLine: 1,
          shadowElevation: 1,
          kBottomRadius: 25.0,
          notchColor: AppColor.primaryColor,

          /// restart app if you change removeMargins
          removeMargins: false,
          bottomBarWidth: context.width - 20.0,
          bottomBarHeight: 50.0,
          showShadow: false,
          durationInMilliSeconds: 300,
          itemLabelStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: AppColor.primaryTextColor,
          ),
          elevation: 1,
          showTopRadius: true,
          showBottomRadius: true,
          showBlurBottomBar: false,
          notchShader: AppColor.primaryGradient.createShader(
            Rect.fromCircle(center: Offset.zero, radius: 8.0),
          ),
          bottomBarItems: const [
            BottomBarItem(
              inActiveItem: SVGWidget(
                path: IconConstants.tab1,
              ),
              activeItem: SVGWidget(
                path: IconConstants.tab1,
              ),
              itemLabel: 'Lich live',
            ),
            BottomBarItem(
              inActiveItem: SVGWidget(
                path: IconConstants.tab2,
                size: SvgWidgetSize.none,
                width: 28.0,
                height: 28.0,
              ),
              activeItem: SVGWidget(
                path: IconConstants.tab2,
                size: SvgWidgetSize.none,
                width: 28.0,
                height: 28.0,
              ),
              itemLabel: 'Nhom Chat',
            ),
            BottomBarItem(
              inActiveItem: SVGWidget(
                path: IconConstants.tab3,
              ),
              activeItem: SVGWidget(
                path: IconConstants.tab3,
              ),
              itemLabel: 'Trang chu',
            ),
            BottomBarItem(
              inActiveItem: SVGWidget(
                path: IconConstants.tab4,
              ),
              activeItem: SVGWidget(
                path: IconConstants.tab4,
              ),
              itemLabel: 'KQBD',
            ),
            BottomBarItem(
              inActiveItem: SVGWidget(
                path: IconConstants.tab5,
              ),
              activeItem: SVGWidget(
                path: IconConstants.tab5,
              ),
              itemLabel: 'Tai khoan',
            ),
          ],
        ),
      ),
    );
  }
}
