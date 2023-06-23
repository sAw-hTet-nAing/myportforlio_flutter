// ignore_for_file: avoid_renaming_method_parameters, file_names

import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/material.dart';

class ScaleAndFadeTransformer extends PageTransformer {
  final double _scale;
  final double _fade;

  ScaleAndFadeTransformer({double fade = 0.3, double scale = 0.8})
      : _fade = fade,
        _scale = scale;

  @override
  Widget transform(Widget items, TransformInfo info) {
    double? position = info.position;
    double? scaleFactor = (1 - position!.abs()) * (1 - _scale);
    double? fadeFactor = (1 - position.abs()) * (1 - _fade);
    double? opacity = _fade + fadeFactor;
    double? scale = _scale + scaleFactor;
    return Opacity(
      opacity: opacity,
      child: Transform.scale(
        scale: scale,
        child: items,
      ),
    );
  }
}
