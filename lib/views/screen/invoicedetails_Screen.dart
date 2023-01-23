import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';

import '../../res/mediaQuery.dart';
import '../widget/invoicedetails_widget/preview_Widget.dart';

class Invoicedetails_Screen extends StatefulWidget {
  // const Invoicedetails_Screen({Key? key}) : super(key: key);

  @override
  State<Invoicedetails_Screen> createState() => _Invoicedetails_ScreenState();
}

class _Invoicedetails_ScreenState extends State<Invoicedetails_Screen> {
  int _selection = 0;
  @override
  void initState() {
    // TODO: implement initState
    setState(() {});
    super.initState();
    Map data = {
      "month": "",
      "type": "",
      "year": "",
      "user_id": "",
      "all": "1" //self
    };
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Text(
            "Invoice details",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontSize: 24, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: SizeVariables.getWidth(context) * 0.025,
                top: SizeVariables.getHeight(context) * 0.01,
              ),
              // height: SizeVariables.getHeight(context) * 0.11,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'INV00000005',
                        style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                primary: Theme.of(context).bottomAppBarColor,
                              ),
                              child: Container(
                                // width: SizeVariables.getWidth(context) * 0.08,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Preview',
                                    style: TextStyle(
                                      color: _selection == 0
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _selection = 0;
                                  Map data = {
                                    "month": "",
                                    "type": "",
                                    "year": "",
                                    "user_id": "",
                                    "all": "1" //self
                                  };
                                });
                                print('SELECTION: $_selection');
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                primary: Theme.of(context).bottomAppBarColor,
                              ),
                              child: Container(
                                // width: SizeVariables.getWidth(context) * 0.08,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Other Details',
                                    style: TextStyle(
                                      color: _selection == 1
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _selection = 1;
                                  Map data = {
                                    "month": "",
                                    "type": "",
                                    "year": "",
                                    "user_id": "",
                                    "all": "1" //self
                                  };
                                });
                                print('SELECTION: $_selection');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                // height: SizeVariables.getHeight(context) * 0.756,
                height: height > 750
                    ? 79.5.h
                    : height < 650
                        ? 79.h
                        : 75.7.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: ListView(
                  children: [
                    _selection == 0
                        ? Preview_Widget()
                        : _selection == 1
                            ? others_details(context)
                            : Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container others_details(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ContainerStyleInvoice(
        child: Text(
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi ipsum ex soluta natus consequuntur voluptatem sed voluptate eum nulla. Molestias harum maxime ipsa? Error, ullam fugit possimus qui autem deleniti expedita ducimus cupiditate libero cumque, hic reiciendis sed amet quidem vero aperiam',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
