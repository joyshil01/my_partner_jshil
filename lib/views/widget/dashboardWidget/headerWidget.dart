import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor/routes/routeName.dart';

import '../../../res/mediaQuery.dart';

class HeaderWidget extends StatefulWidget {
  // const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // height: SizeVariables.getHeight(context) * 0.13,
      height: height > 750
          ? 11.h
          : height < 650
              ? 15.h
              : 13.h,
      width: double.infinity,
      // color: Colors.red,
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.profile);
                },
                child: Container(
                  // color: Colors.red,
                  width: SizeVariables.getWidth(context) * 0.8,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: SizeVariables.getWidth(context) * 0.1,
                        backgroundColor: Colors.green,
                        backgroundImage:
                            const AssetImage('assets/img/profilePic.jpg'),
                        // child: const Icon(Icons.account_box, color: Colors.white),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: SizeVariables.getHeight(context) * 0.015,
                          left: SizeVariables.getWidth(context) * 0.02,
                        ),
                        height: double.infinity,
                        // color: Colors.amber,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'Joy Shil',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontSize: 20),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.shield,
                                    color: Colors.grey,
                                    size: 17,
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'V093',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color:
                                                Color.fromARGB(255, 64, 63, 63),
                                            fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'GSTN01234567892',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color:
                                            Color.fromARGB(255, 132, 130, 130)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: SizeVariables.getHeight(context) * 0.07,
                width: SizeVariables.getWidth(context) * 0.1,
                // color: Colors.amber,
                child: Stack(
                  children: [
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Theme.of(context).bottomAppBarColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
