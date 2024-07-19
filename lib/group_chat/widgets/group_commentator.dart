import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_app/constants/icon_constants.dart';
import 'package:demo_app/theme/theme_color.dart';
import 'package:demo_app/widgets/svg_widget.dart';
import 'package:flutter/material.dart';

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    super.key,
    required this.path,
    this.onTapped,
  });

  final VoidCallback? onTapped;
  final String path;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped?.call,
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          gradient: AppColor.accentGradient,
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
        child: Center(
          child: SVGWidget(
            path: path,
            size: SvgWidgetSize.lg,
          ),
        ),
      ),
    );
  }
}

class GroupCommentator extends StatelessWidget {
  const GroupCommentator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF4F5F7),
      padding: const EdgeInsets.only(
        top: 2.5,
        bottom: 5.5,
        left: 5.0,
        right: 5.0,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: AppColor.accentGradient,
              borderRadius: BorderRadius.circular(40.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 11,
                  offset: const Offset(-2, 5),
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
              width: 80.0,
              height: 80.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: CachedNetworkImage(
                  imageUrl: "https://picsum.photos/200/300",
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: SizedBox(
                        width: 132.0,
                        height: 40.0,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: AppColor.secondaryGradient,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                width: 1.0,
                                color: AppColor.primaryColor,
                                style: BorderStyle.solid,
                              )),
                          child: const Center(
                            child: Text(
                              'BLV',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w700,
                                color: AppColor.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    Expanded(
                      child: InkWell(
                        child: SizedBox(
                          height: 40.0,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: AppColor.primaryGradient,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  width: 1.0,
                                  color: AppColor.primaryColor,
                                  style: BorderStyle.solid,
                                )),
                            child: const Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Doi BLV',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.primaryTextColor,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  SVGWidget(
                                    path: IconConstants.changeCommentator,
                                    width: 30.0,
                                    height: 30.0,
                                    size: SvgWidgetSize.none,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          gradient: AppColor.accentGradient,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFE4B764),
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7.0,
                              ),
                              decoration: BoxDecoration(
                                gradient: AppColor.primaryGradient,
                                borderRadius: BorderRadius.circular(20.0),
                                border: const Border(
                                  right: BorderSide(
                                    width: 1.0,
                                    color: AppColor.primaryColor,
                                  ),
                                ),
                              ),
                              height: 38.0,
                              child: const Center(
                                child: Text(
                                  '+Follow',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.primaryTextColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 4.0),
                            const Expanded(
                              child: Row(
                                children: [
                                  SVGWidget(
                                    path: IconConstants.follow,
                                    size: SvgWidgetSize.none,
                                    width: 13.0,
                                    height: 15.0,
                                  ),
                                  SizedBox(width: 2.0),
                                  Expanded(
                                    child: Text(
                                      '8875',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: AppColor.primaryTextColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    const SizedBox(width: 16.0),
                    const _ActionButton(
                      path: IconConstants.expand,
                    ),
                    const SizedBox(width: 12.0),
                    const _ActionButton(
                      path: IconConstants.download,
                    ),
                    const SizedBox(width: 12.0),
                    const _ActionButton(
                      path: IconConstants.share,
                    ),
                    const SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
