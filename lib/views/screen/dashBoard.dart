import 'package:flutter/material.dart';

import '../../res/mediaQuery.dart';
import '../widget/dashboardWidget/barChart/bar_Chart.dart';
import '../widget/dashboardWidget/headerWidget.dart';
import '../widget/dashboardWidget/lastInvoice/lastInvoicesWidget.dart';
import '../widget/dashboardWidget/receivable_vs_Receive/receivableWidget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        padding: EdgeInsets.only(
          left: SizeVariables.getWidth(context) * 0.025,
          right: SizeVariables.getWidth(context) * 0.025,
        ),
        child: ListView(
          children: [
            HeaderWidget(),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.02,
            ),
            ReceivableWidget(),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.02,
            ),
            LastInvoicesWidget(),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.02,
            ),
            Bar_Chart(),
          ],
        ),
      ),
    );
  }
}
