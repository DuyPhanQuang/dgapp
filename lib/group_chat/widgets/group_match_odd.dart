import 'package:demo_app/theme/theme_color.dart';
import 'package:flutter/material.dart';

import '../../constants/icon_constants.dart';
import '../../widgets/widgets.dart';

class GroupMatchOdd extends StatelessWidget {
  const GroupMatchOdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 4.0),
              const Text(
                'HDP.FT',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFF5C5C5C),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 4.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 6.0,
                    top: 1.0,
                    bottom: 1.0,
                  ),
                  decoration: BoxDecoration(
                    gradient: AppColor.accentGradient,
                    borderRadius: BorderRadius.circular(25.0),
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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '-0.75',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF5C5C5C),
                        ),
                      ),
                      SVGWidget(
                        path: IconConstants.up,
                        size: SvgWidgetSize.none,
                        width: 8.0,
                        height: 8.0,
                      ),
                      Text(
                        '1.92',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 4.0),
              const Text(
                'O/U.FT',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFF5C5C5C),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 4.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 6.0,
                    top: 1.0,
                    bottom: 1.0,
                  ),
                  decoration: BoxDecoration(
                    gradient: AppColor.accentGradient,
                    borderRadius: BorderRadius.circular(25.0),
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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0/3.25',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF5C5C5C),
                        ),
                      ),
                      SVGWidget(
                        path: IconConstants.up,
                        size: SvgWidgetSize.none,
                        width: 8.0,
                        height: 8.0,
                      ),
                      Text(
                        '1.95',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
