import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vendor/views/screen/dashBoard.dart';
import 'package:vendor/views/screen/invoiceScreen.dart';
import 'package:vendor/views/screen/poScreen.dart';

import '../../views/screen/reconciliationScreen.dart';
import '../../views/screen/quotationsScreen.dart';

class CustomBottomNavigation extends StatefulWidget {
  // int selectedIndex;
  // const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
  // CustomBottomNavigation(this.selectedIndex);

}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int index = 2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      SvgPicture.asset(
        "assets/icons/nav bar/task list.svg",
      ),
      SvgPicture.asset(
        "assets/icons/nav bar/purchase order.svg",
      ),
      SvgPicture.asset(
        "assets/icons/nav bar/home.svg",
      ),
      SvgPicture.asset(
        "assets/icons/nav bar/invoice.svg",
      ),
      SvgPicture.asset(
        "assets/icons/nav bar/debit note credit note.svg",
      ),
    ];

    final screens = [
      ReconciliationScreen(),
      PoScreen(),
      DashBoard(),
      InvoiceScreen(),
      QuotationScreen(),
    ];
    return SafeArea(
      child: Scaffold(
        body: screens[index],
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(200), topRight: Radius.circular(200)),
            boxShadow: [
              BoxShadow(
                color: Colors.transparent,
                blurRadius: 10,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: CurvedNavigationBar(
            items: items,
            index: index,
            height: 60,
            color: Theme.of(context).colorScheme.secondary,
            backgroundColor: Colors.transparent,
            onTap: (index) => setState(
              () {
                this.index = index;
              },
            ),
          ),
        ),
      ),
    );
  }
}
