import 'dart:async';
import 'package:flutter/material.dart';

class OpeningPage extends StatefulWidget {
    const OpeningPage({Key? key}) : super(key: key);

    @override
    _OpeningPageState createState() => _OpeningPageState();
  }

class _OpeningPageState extends State<OpeningPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = Tween(begin: -0.2, end: 0.2).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack))
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat(reverse: true);

    Timer(const Duration(seconds: 3), () {
      // navigate to the home page after 2 seconds with fade transition
      Navigator.pushReplacementNamed(context, '/workshops');

    });
  }

  void startShakingAnimation() {
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.rotate(
          angle: _animation.value,
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}