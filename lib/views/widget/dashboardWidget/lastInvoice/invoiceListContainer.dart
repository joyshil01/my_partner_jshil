import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerStyleInvoice extends StatelessWidget {
  // const ContainerStyle({Key? key}) : super(key: key);
  // final double height;
  final Widget child;
  final double? width;

  ContainerStyleInvoice({
    // required this.height,
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(width * 0.01),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            
            // border: 
            // const Border(
            //   bottom: BorderSide(width: 0.02),
            //   top: BorderSide(width: 0.02),
            //   right: BorderSide(width: 0.02),
            //   left: BorderSide(width: 0.02),
            // ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: child,
        ),
      ),
    );
  }
}
