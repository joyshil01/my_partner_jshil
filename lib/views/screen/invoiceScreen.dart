import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:vendor/res/components/date_range_picker.dart';
import 'package:vendor/res/mediaQuery.dart';
import 'package:vendor/routes/routeName.dart';
import 'package:vendor/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';

import '../responsive.dart';
import '../widget/invoice_widget/cr_dr_widget.dart';
import '../widget/invoice_widget/dr_Widget.dart';

class InvoiceScreen extends StatefulWidget {
  // const InvoiceScreen({Key? key}) : super(key: key);
  bool changeOnTap = false;

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(DateTime.now().year, DateTime.now().month, 1),
    end: DateTime(DateTime.now().year, DateTime.now().month + 1, 0),
  );
  int _selection = 0;
  int Counter = 0;
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
    final start = dateRange.start;
    final end = dateRange.end;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            automaticallyImplyLeading: false,
            title: Text(
              "Invoice",
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
                  left: SizeVariables.getWidth(context) * 0.02,
                ),
                // height: SizeVariables.getHeight(context) * 0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: SizeVariables.getWidth(context) * 0.8,
                            child: DateRangePicker(
                              onPressed: pickDateRange,
                              end: end,
                              start: start,
                              // width: double.infinity,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: SizeVariables.getHeight(context) * 0.006,
                          ),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Total invoice amount: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: SizeVariables.getHeight(context) * 0.01,
                            left: SizeVariables.getWidth(context) * 0.03,
                          ),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              '\₹123617',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: SizeVariables.getHeight(context) * 0.01,
                          ),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Total pending amount: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: SizeVariables.getHeight(context) * 0.01,
                            left: SizeVariables.getWidth(context) * 0.03,
                          ),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              '\₹1236',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Container(
                    //   width: 400,
                    //   // color: Colors.amber,
                    //   margin: EdgeInsets.only(
                    //     top: SizeVariables.getHeight(context) * 0.02,
                    //   ),
                    //   child: ToggleSwitch(
                    //     // changeOnTap: true,
                    //     minWidth: 400,
                    //     customWidths: [190, 190],
                    //     // dividerColor: Colors.amber,
                    //     // cornerRadius: 10,
                    //     curve: Curves.easeInBack,
                    //     activeBgColor: [
                    //       // _selection == 0
                    //       //     ? Theme.of(context).scaffoldBackgroundColor
                    //       //     : _selection == 1
                    //       //         ? Theme.of(context).scaffoldBackgroundColor
                    //       //         :
                    //       Theme.of(context).scaffoldBackgroundColor,
                    //     ],
                    //     activeFgColor: Colors.black,
                    //     inactiveBgColor:
                    //         Theme.of(context).colorScheme.secondary,
                    //     inactiveFgColor: Colors.white,
                    //     totalSwitches: 2,
                    //     labels: ['Invoice', 'CR & DR'],
                    //     onToggle: (index) {
                    //       _selection == 0;
                    //       // setState(
                    //       //   () {
                    //       //     // _selection = index!;
                    //       //   },
                    //       // );
                    //       print('switched to: $index');
                    //     },
                    //   ),
                    // ),

                    SizedBox(
                      height: SizeVariables.getHeight(context)*0.01,
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  primary: _selection == 0
                                      ? Theme.of(context)
                                          .scaffoldBackgroundColor
                                      : Theme.of(context).unselectedWidgetColor,
                                ),
                                child: Container(
                                  width: SizeVariables.getWidth(context) * 0.2,
                                  child: Center(
                                    child: Text(
                                      'Invoice',
                                      style: TextStyle(
                                        color: _selection == 0
                                            ? Colors.black
                                            : Colors.white,
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
                            width: SizeVariables.getHeight(context) * 0.006,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  primary: _selection == 1
                                      ? Theme.of(context)
                                          .scaffoldBackgroundColor
                                      : Theme.of(context).unselectedWidgetColor,
                                ),
                                child: Container(
                                  width: SizeVariables.getWidth(context) * 0.2,
                                  child: Center(
                                    child: Text(
                                      'CR',
                                      style: TextStyle(
                                        color: _selection == 1
                                            ? Colors.black
                                            : Colors.white,
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
                          SizedBox(
                            width: SizeVariables.getHeight(context) * 0.006,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  primary: _selection == 2
                                      ? Theme.of(context)
                                          .scaffoldBackgroundColor
                                      : Theme.of(context).unselectedWidgetColor,
                                ),
                                child: Container(
                                  width: SizeVariables.getWidth(context) * 0.2,
                                  child: Center(
                                    child: Text(
                                      'DR',
                                      style: TextStyle(
                                        color: _selection == 2
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _selection = 2;
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
                  // height: SizeVariables.getHeight(context) * 0.68,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: Column(
                    children: [
                      _selection == 0
                          ? invoice_Widget(context)
                          : _selection == 1
                              ? Cr_Dr_widget()
                              : _selection == 2
                                  ? Dr_Widget()
                                  : Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container invoice_Widget(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.amber,
      // height: SizeVariables.getHeight(context) * 0.68,
      height: height > 750
          ? 67.h
          : height < 650
              ? 64.h
              : 60.h,
      child: Responsive(
        mobile: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: 15,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, RouteNames.invoice_details);
            },
            child: Padding(
              padding: EdgeInsets.only(
                  top: SizeVariables.getHeight(context) * 0.008,
                  left: SizeVariables.getWidth(context) * 0.025,
                  right: SizeVariables.getWidth(context) * 0.025,
                  bottom: SizeVariables.getHeight(context) * 0.01),
              child: ContainerStyleInvoice(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: SizeVariables.getWidth(context) * 0.06,
                            backgroundColor: Colors.green,
                            backgroundImage:
                                const AssetImage('assets/img/profilePic.jpg'),
                            // child: const Icon(Icons.account_box, color: Colors.white),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: SizeVariables.getWidth(context) * 0.01,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: SizeVariables.getWidth(context) * 0.5,
                                  // color: Colors.amber,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        // width: SizeVariables.getWidth(context)*0.15,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'INV00000005',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // width: SizeVariables.getWidth(context)*0.15,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            '2023-02-01',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeVariables.getHeight(context) * 0.01,
                                ),
                                Container(
                                  width: SizeVariables.getWidth(context) * 0.5,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        // width: SizeVariables.getWidth(context)*0.15,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            '[1 item/s]',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: SizeVariables.getWidth(context) *
                                            0.18,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'Due in 83 days',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: SizeVariables.getWidth(context) * 0.03,
                            ),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Text(
                                '\₹123617',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: SizeVariables.getHeight(context)*0.01,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          padding: EdgeInsets.only(
                              // left: SizeVariables.getWidth(context) * 0.03,
                              top: SizeVariables.getHeight(context) * 0.013),
                          child: Text(
                            'Flipkart India Pvt Ltd. ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 174, 194, 185),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 7.0,
                                    right: 7.0,
                                    top: 2.8,
                                    bottom: 2.8,
                                  ),
                                  child: Center(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Paid',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              color: Color.fromARGB(
                                                  255, 63, 147, 84),
                                              fontSize: 12,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '5 jan 2023',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        desktop: Row(),
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        builder: (context, child) => Theme(
              data: ThemeData.light().copyWith(
                primaryColor: Colors.blue,
                accentColor: Colors.blue,
                colorScheme: const ColorScheme.light(primary: Colors.blue),
                buttonTheme:
                    const ButtonThemeData(textTheme: ButtonTextTheme.primary),
              ),
              child: child!,
            ),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        initialDateRange: dateRange);

    if (newDateRange == null) return;

    setState(() {
      dateRange = newDateRange;
      // isLoading = true;
    });

    // Map<String, dynamic> _data = {'month': myMonth, 'year': myYears.toString()};

    print('dateRange: $dateRange');
    return dateRange;
  }
}
