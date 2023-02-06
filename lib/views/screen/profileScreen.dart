import 'package:flutter/material.dart';
import 'package:vendor/res/mediaQuery.dart';
import 'package:vendor/routes/routeName.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          "Profile details",
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: 24, color: Colors.white),
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.logout_outlined,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.login);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
