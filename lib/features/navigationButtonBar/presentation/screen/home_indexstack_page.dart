import 'package:flutter/material.dart';

class HomeIndexStackPage extends StatefulWidget {
  final int index;
  final List<Widget> children;
  final Duration duration;

  const HomeIndexStackPage({
    Key? key,
    required this.index,
    required this.children,
    this.duration = const Duration(
      milliseconds: 1200,
    ),
  }) : super(key: key);

  @override
  __HomeIndexStackPageState createState() => __HomeIndexStackPageState();
}

class __HomeIndexStackPageState extends State<HomeIndexStackPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void didUpdateWidget(HomeIndexStackPage oldWidget) {
    if (widget.index != oldWidget.index) {
      _controller.forward(from: 0.0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => FadeTransition(
        opacity: _controller,
        child: IndexedStack(
          index: widget.index,
          children: widget.children,
        ),
      );
}
