import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SvgWidgetMode { asset, network }

enum SvgWidgetSize { sm, md, lg, none }

class SVGWidget extends StatelessWidget {
  const SVGWidget({
    super.key,
    required this.path,
    this.semanticsLabel = '',
    this.mode = SvgWidgetMode.asset,
    this.fit = BoxFit.contain,
    this.size = SvgWidgetSize.md,
    this.width,
    this.height,
  });

  final String path;
  final String? semanticsLabel;
  final SvgWidgetMode mode;
  final BoxFit fit;
  final SvgWidgetSize size;
  final double? width;
  final double? height;

  double get _size {
    switch (size) {
      case SvgWidgetSize.sm:
        return 12.0;
      case SvgWidgetSize.md:
        return 24.0;
      case SvgWidgetSize.lg:
        return 30.0;
      default:
        return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (mode == SvgWidgetMode.network) {
      return SvgPicture.network(
        path,
        semanticsLabel: semanticsLabel,
        fit: fit,
        width: size == SvgWidgetSize.none ? width : _size,
        height: size == SvgWidgetSize.none ? height : _size,
      );
    }

    return SvgPicture.asset(
      path,
      semanticsLabel: semanticsLabel,
      fit: fit,
      width: size == SvgWidgetSize.none ? width : _size,
      height: size == SvgWidgetSize.none ? height : _size,
    );
  }
}
