import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:vendor/res/mediaQuery.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: SizeVariables.getHeight(context) * 0.07,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Reshaping the future',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontSize: 30,
                        ),
                  ),
                ),
              ),
              Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'of finance.',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontSize: 30,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Lottie.asset('assets/json/VitwoAI Login.json',
              fit: BoxFit.cover,
              height: SizeVariables.getHeight(context) * 0.4),
        ),
      ],
    );
  }
}
