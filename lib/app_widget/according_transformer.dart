import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/material.dart';

class AccordionTransformer extends PageTransformer {
  @override
  Widget transform(Widget child, TransformInfo info) {
    double? position = info.position;
    if (position! < 0.0) {
      return Transform.scale(
        scale: 1 + position,
        alignment: Alignment.center,
        child: child,
      );
    } else {
      return Transform.scale(
        scale: 1 - position,
        alignment: Alignment.center,
        child: child,
      );
    }
  }
}
