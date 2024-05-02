import 'package:flutter/material.dart';

class RotationVirus extends StatefulWidget {
  @override
  _RotationVirusState createState() => _RotationVirusState();
}

class _RotationVirusState extends State<RotationVirus>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animationController,
      child: Image.asset(
        'assets/logo.png',
        width: 400,
        height: 200,
      ),
    );
  }
}
