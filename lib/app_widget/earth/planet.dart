import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Planet extends StatefulWidget {
  const Planet(
      {super.key,
      required this.interative,
      required this.height,
      required this.width});
  final bool interative;
  final double height;
  final double width;
  @override
  State<Planet> createState() => _PlanetState();
}

class _PlanetState extends State<Planet> with SingleTickerProviderStateMixin {
  late Scene _scene;

  Object? _earth;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 30000), vsync: this)
      ..addListener(() {
        if (!widget.interative) {
          if (_earth != null) {
            _earth!.rotation.y = _controller.value * -360;
            _earth!.updateTransform();
            _scene.update();
          }
        }
      })
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _onSceneCreated(Scene scene) {
    _scene = scene;
    if (widget.interative) {
      _scene.camera.position.z = 20;
    } else {
      _scene.camera.position.z = 13;
    }

    // model from https://free3d.com/3d-model/planet-earth-99065.html
    _earth = Object(
        name: 'earth',
        scale: Vector3(10.0, 10.0, 10.0),
        backfaceCulling: false,
        fileName: 'assets/earth/earth.obj');

    _scene.world.add(_earth!);

    // texture from https://www.solarsystemscope.com/textures/
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TweenAnimationBuilder<double>(
          duration: const Duration(seconds: 3),
          curve: Curves.easeIn,
          tween: Tween(begin: 0, end: 1),
          builder: (context, animation, child) {
            return Opacity(
              opacity: animation,
              child: Cube(
                onSceneCreated: _onSceneCreated,
                interactive: widget.interative,
              ),
            );
          }),
    );
  }
}
