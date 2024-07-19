import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get queryPaddingTop => MediaQuery.of(this).padding.top;
  double get queryPaddingBottom => MediaQuery.of(this).padding.bottom;
  double get queryPaddingLeft => MediaQuery.of(this).padding.left;
  double get queryPaddingRight => MediaQuery.of(this).padding.right;
  double get queryViewPaddingTop => MediaQuery.of(this).viewPadding.top;
  double get queryViewPaddingBottom => MediaQuery.of(this).viewPadding.bottom;
  double get queryViewPaddingLeft => MediaQuery.of(this).viewPadding.left;
  double get queryViewPaddingRight => MediaQuery.of(this).viewPadding.right;
  double get queryViewInsetsTop => MediaQuery.of(this).viewInsets.top;
  double get queryViewInsetsBottom => MediaQuery.of(this).viewInsets.bottom;
  double get queryViewInsetsLeft => MediaQuery.of(this).viewInsets.left;
  double get queryViewInsetsRight => MediaQuery.of(this).viewInsets.right;
}
