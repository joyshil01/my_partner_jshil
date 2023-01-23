import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerStyle extends StatelessWidget {
  // const ContainerStyle({Key? key}) : super(key: key);
  // final double height;
  final Widget child;
  final double? width;

  ContainerStyle({
    // required this.height,
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(width * 0.02),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            border: const Border(
                bottom: BorderSide(width: 0.06),
                top: BorderSide(width: 0.06),
                right: BorderSide(width: 0.06),
                left: BorderSide(width: 0.06)),
          ),
          child: child,
        ),
      ),
    );
  }
}

class LoginContainer extends StatelessWidget {
  // const ContainerStyle({Key? key}) : super(key: key);
  // final double height;
  final Widget child;
  final double? width;

  LoginContainer({
    // required this.height,
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(width * 0.02),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 212, 226, 241),
            border: const Border(
              bottom: BorderSide(width: 0.06),
              top: BorderSide(width: 0.06),
              right: BorderSide(width: 0.06),
              left: BorderSide(width: 0.06),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.green,
                offset: Offset(
                  10.0,
                  10.0,
                ),
                blurRadius: 20.0,
                spreadRadius: 20.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.pink,
                offset: const Offset(010.0, 010.0),
                blurRadius: 10.0,
                spreadRadius: 010.0,
              ), //BoxShadow
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
