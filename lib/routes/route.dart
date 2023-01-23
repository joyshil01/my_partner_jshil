import 'package:flutter/material.dart';
import 'package:vendor/routes/routeName.dart';
import 'package:vendor/views/screen/invoicedetails_Screen.dart';
import 'package:vendor/views/screen/login/login_Screen.dart';
import 'package:vendor/views/screen/miscellaneous_screen.dart';
import 'package:vendor/views/screen/podetails_Screen.dart';
import 'package:vendor/views/screen/quotationFormScreen.dart';
import 'package:vendor/views/screen/uploadAccountStatement_screen.dart';
import 'package:vendor/views/screen/uploadCrNote_screen.dart';
import 'package:vendor/views/screen/uploadInvoice_screen.dart';
import '../res/components/bottomNavigationBar.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.navbar:
        return MaterialPageRoute(
            builder: (BuildContext context) => CustomBottomNavigation());

      case RouteNames.invoice_details:
        return MaterialPageRoute(
            builder: (BuildContext context) => Invoicedetails_Screen());

      case RouteNames.po_details:
        return MaterialPageRoute(
            builder: (BuildContext context) => Podetails_Screen());

      case RouteNames.quotationform:
        return MaterialPageRoute(
            builder: (BuildContext context) => QuotationForm_Screen());

      case RouteNames.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen());

      case RouteNames.upload_invoice:
        return MaterialPageRoute(
            builder: (BuildContext context) => UploadInvoice_Screen());

      case RouteNames.upload_cr_note:
        return MaterialPageRoute(
            builder: (BuildContext context) => UploadCrNote_Screen());

      case RouteNames.upload_account_statement:
        return MaterialPageRoute(
            builder: (BuildContext context) => UploadAccountStatement_Screen());

      case RouteNames.miscellaneous:
        return MaterialPageRoute(
            builder: (BuildContext context) => Miscellaneous_Screen());

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return const Scaffold(
              body: Center(
                child: Text('No Route'),
              ),
            );
          },
        );
    }
  }
}
