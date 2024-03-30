import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/data/my_soruces.dart';

class MyTextReveal extends StatefulWidget {
  const MyTextReveal({
    super.key,
    required this.strings,
    this.initialText,
    this.shouldPlayOnStart = true,
    this.style,
    this.randomString = MySource.uppercase,
    this.duration = const Duration(seconds: 2),
    this.onFinished,
    this.curve = Curves.easeIn,
    this.textDirection = TextDirection.ltr,
    this.locale,
    this.maxLines,
    this.overflow,
    this.softWrap,
    this.textAlign,
    this.semanticsLabel,
  });

  final List<String> strings;
  final String? initialText;
  final bool shouldPlayOnStart;
  final String randomString;
  final Duration duration;
  final VoidCallback? onFinished;
  final Curve curve;
  final TextStyle? style;
  final TextDirection? textDirection;
  final Locale? locale;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final TextAlign? textAlign;
  final String? semanticsLabel;

  @override
  State<MyTextReveal> createState() => MyTextRevealState();
}

class MyTextRevealState extends State<MyTextReveal>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int _currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);

    CurvedAnimation curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
    );

    _animation = Tween<double>(
      begin: 0,
      end: widget.strings[_currentIndex].length.toDouble(),
    ).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (mounted) {
          if (status == AnimationStatus.completed) {
            Future.delayed(const Duration(seconds: 1), () {
              if (mounted) {
                _controller.reverse();
              }
            });
          } else if (status == AnimationStatus.dismissed) {
            _nextString();
            Future.delayed(const Duration(seconds: 1), () {
              if (mounted) {
                _controller.forward();
              } else {
                _controller.reset();
              }
            });
          }
        }
      });

    if (widget.shouldPlayOnStart) {
      play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _animatedText(
        text: widget.strings[_currentIndex],
        value: _animation.value.toInt(),
      ),
      style: widget.style,
      textDirection: widget.textDirection,
      locale: widget.locale,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      softWrap: widget.softWrap,
      textAlign: widget.textAlign,
      semanticsLabel: widget.semanticsLabel,
    );
  }

  String _animatedText({required String text, required int value}) {
    if (!_controller.isAnimating && !_controller.isCompleted) {
      return widget.initialText ?? '';
    }

    if (value >= text.length) {
      return text;
    }

    String substring = text.substring(0, value);

    int len = text.length - substring.length;

    final random = Random();
    final randomString = StringBuffer();

    for (int i = 0; i < len; i++) {
      int index = random.nextInt(widget.randomString.length);
      randomString.writeCharCode(
        widget.randomString.codeUnitAt(index),
      );
    }

    return '$substring${randomString.toString()}';
  }

  void _nextString() {
    _currentIndex = (_currentIndex + 1) % widget.strings.length;
  }

  void play({double from = 0}) {
    _controller.forward(from: from);
  }
}
