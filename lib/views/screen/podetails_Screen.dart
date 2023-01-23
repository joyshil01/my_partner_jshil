// import 'dart:html';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor/res/components/buttonStyle.dart';
import 'package:vendor/res/components/containerStyle.dart';
import 'package:vendor/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';
import '../../res/mediaQuery.dart';

class Podetails_Screen extends StatefulWidget {
  // const Podetails_Screen({Key? key}) : super(key: key);

  @override
  State<Podetails_Screen> createState() => _Podetails_ScreenState();
}

class _Podetails_ScreenState extends State<Podetails_Screen> {
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
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            title: Text(
              "Purchase details",
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
                // height: SizeVariables.getHeight(context) * 0.16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: CircleAvatar(
                              radius: SizeVariables.getWidth(context) * 0.1,
                              backgroundColor: Colors.green,
                              backgroundImage: const AssetImage(
                                'assets/img/profilePic.jpg',
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: SizeVariables.getWidth(context) * 0.02),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'APPEX CORPORATE SOLUTION',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                  color: Colors.white,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeVariables.getHeight(context) * 0.005,
                                ),
                                Container(
                                  // color: Colors.amber,
                                  width: SizeVariables.getWidth(context) * 0.54,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'PO2301011',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            '\₹123617',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeVariables.getHeight(context) * 0.005,
                                ),
                                Container(
                                  // color: Colors.amber,
                                  width: SizeVariables.getWidth(context) * 0.54,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'REF: PO2301011',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: CircleAvatar(
                                          radius: 12,
                                          backgroundColor: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Theme.of(context).primaryColor,
                                            radius: 11,
                                            child: Text(
                                              '4',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(fontSize: 13),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                                      'Info',
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
                                      'Upload',
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
                  // height: SizeVariables.getHeight(context) * 0.6,
                  height: height > 750
                      ? 74.2.h
                      : height < 650
                          ? 71.h
                          : 68.h,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: ListView(
                    children: [
                      _selection == 0
                          ? Container(
                              // color: Colors.amber,
                              // height: SizeVariables.getHeight(context) * 0.7,
                              height: height > 750
                                  ? 81.8.h
                                  : height < 650
                                      ? 71.h
                                      : 70.h,
                              child: ListView.builder(
                                itemCount: 4,
                                itemBuilder: (context, index) => Container(
                                  padding: EdgeInsets.only(
                                    left:
                                        SizeVariables.getWidth(context) * 0.025,
                                    right:
                                        SizeVariables.getWidth(context) * 0.025,
                                    top:
                                        SizeVariables.getHeight(context) * 0.02,
                                    bottom:
                                        SizeVariables.getHeight(context) * 0.01,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'Items Details',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            SizeVariables.getHeight(context) *
                                                0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ContainerStyle(
                                          child: Row(
                                            children: [
                                              Container(
                                                child: CircleAvatar(
                                                  radius:
                                                      SizeVariables.getWidth(
                                                              context) *
                                                          0.07,
                                                  backgroundColor: Colors.green,
                                                  // backgroundImage:
                                                  //     const AssetImage(
                                                  //   'assets/img/profilePic.jpg',
                                                  // ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        SizeVariables.getWidth(
                                                                context) *
                                                            0.025),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: FittedBox(
                                                        fit: BoxFit.contain,
                                                        child: Text(
                                                          '11000002',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText2,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: SizeVariables
                                                              .getHeight(
                                                                  context) *
                                                          0.005,
                                                    ),
                                                    Container(
                                                      child: FittedBox(
                                                        fit: BoxFit.contain,
                                                        child: Text(
                                                          'Rawmaterial -1',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText1,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : _selection == 1
                              ? Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: ContainerStyleInvoice(
                                          child: Row(
                                            children: [
                                              Container(
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Colors.grey,
                                                  ),
                                                  child: Text(
                                                    "Choose file",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1,
                                                  ),
                                                  onPressed: () async {
                                                    final result =
                                                        await FilePicker
                                                            .platform
                                                            .pickFiles();
                                                  },
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        SizeVariables.getWidth(
                                                                context) *
                                                            0.02),
                                                child: FittedBox(
                                                  fit: BoxFit.contain,
                                                  child: Text(
                                                    'No file chosen',
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
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: SizeVariables.getHeight(
                                                      context) *
                                                  0.04,
                                              width: SizeVariables.getWidth(
                                                      context) *
                                                  0.35,
                                              child: AppButton(
                                                label: 'Save changes',
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
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
}
