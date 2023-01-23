import 'package:flutter/material.dart';
import 'package:vendor/res/components/buttonStyle.dart';
import 'package:vendor/res/components/containerStyle.dart';
import 'package:vendor/res/mediaQuery.dart';
import 'package:vendor/routes/routeName.dart';

import '../../../responsive.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Your ID',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              border: const Border(
                bottom: BorderSide(width: 0.06),
                top: BorderSide(width: 0.06),
                right: BorderSide(width: 0.06),
                left: BorderSide(width: 0.06),
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 197, 195, 195),
                  offset: Offset(
                    3.0,
                    3.0,
                  ),
                  blurRadius: 3.0,
                  spreadRadius: 1.0,
                ), //BoxShadow
              ],
            ),
            padding: EdgeInsets.only(
              left: 5,
              // bottom: 8,
            ),
            height: SizeVariables.getHeight(context) * 0.05,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
              cursorColor: Colors.black,
              onSaved: (email) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Your ID",
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.03,
          ),
          Container(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Your Password',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              border: const Border(
                bottom: BorderSide(width: 0.06),
                top: BorderSide(width: 0.06),
                right: BorderSide(width: 0.06),
                left: BorderSide(width: 0.06),
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 197, 195, 195),
                  offset: Offset(
                    3.0,
                    3.0,
                  ),
                  blurRadius: 3.0,
                  spreadRadius: 1.0,
                ), //BoxShadow
              ],
            ),
            padding: EdgeInsets.only(
              left: 5,
              // bottom: 8,
            ),
            height: SizeVariables.getHeight(context) * 0.05,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
              cursorColor: Colors.black,
              onSaved: (email) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Your Password",
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.04,
          ),
          Responsive(
            mobile: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // margin: EdgeInsets.all(8),
                  height: SizeVariables.getHeight(context) * 0.06,
                  child: LoginButton(
                    label: 'Log-in',
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.navbar);
                    },
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.03,
                ),
              ],
            ),
            desktop: Row(),
          ),
        ],
      ),
    );
  }
}
