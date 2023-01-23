import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor/routes/route.dart';
import 'package:vendor/routes/routeName.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        SizerUtil.deviceType == DeviceType.mobile
            ? Container(
                // Widget for Mobile
                width: 100.w,
                height: 20.5.h,
              )
            : Container(
                // Widget for Tablet
                width: 100.w,
                height: 12.5.h,
              );
        return MaterialApp(
          // initialRoute: RouteNames.navbar,
          initialRoute: RouteNames.login,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.generateRoute,
          theme: ThemeData(
            scaffoldBackgroundColor: Color(0xfffdbe5ee),
            primaryColor: Color.fromARGB(255, 198, 210, 223),
            bottomAppBarColor: Color(0xfff003060),
            colorScheme: ColorScheme.fromSwatch().copyWith(
              background: Colors.white,
              secondary: Color(0xfff003060),
              
            ),
            unselectedWidgetColor: Color.fromARGB(255, 16, 68, 121),
            textTheme: const TextTheme(
              caption: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
              bodyText1: TextStyle(
                fontFamily: 'SourceSansPro',
                color: Colors.black,
                fontSize: 12,
              ),
              bodyText2: TextStyle(
                fontFamily: 'SourceSansPro',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        );
      },
    );
  }
}
