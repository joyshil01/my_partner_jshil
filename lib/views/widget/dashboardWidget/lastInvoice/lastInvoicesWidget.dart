import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor/res/components/containerStyle.dart';
import 'package:vendor/res/mediaQuery.dart';
import 'package:vendor/routes/routeName.dart';
import 'package:vendor/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';

import '../../../responsive.dart';

class LastInvoicesWidget extends StatefulWidget {
  // const LastInvoicesWidget({Key? key}) : super(key: key);

  @override
  State<LastInvoicesWidget> createState() => _LastInvoicesWidgetState();
}

class _LastInvoicesWidgetState extends State<LastInvoicesWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.amber,
      // height: SizeVariables.getHeight(context) * 0.71,
      child: ContainerStyle(
        child: Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Last Invoice",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 22),
                  ),
                ),
              ),
              // SizedBox(
              //   height: SizeVariables.getHeight(context) * 0.01,
              // ),
              Container(
                // color: Colors.red,
                // height: SizeVariables.getHeight(context) * 0.64,
                height: height > 750
                    ? 64.h
                    : height < 650
                        ? 85.h
                        : 82.h,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.invoice_details);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeVariables.getHeight(context) * 0.007,
                        bottom: SizeVariables.getHeight(context) * 0.008,
                      ),
                      child: ContainerStyleInvoice(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Responsive(
                              // color: Colors.red,
                              mobile: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    radius:
                                        SizeVariables.getWidth(context) * 0.06,
                                    backgroundColor: Colors.green,
                                    backgroundImage: const AssetImage(
                                        'assets/img/profilePic.jpg'),
                                    // child: const Icon(Icons.account_box, color: Colors.white),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: SizeVariables.getWidth(context) *
                                          0.01,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width:
                                              SizeVariables.getWidth(context) *
                                                  0.5,
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
                                              SizeVariables.getHeight(context) *
                                                  0.01,
                                        ),
                                        Container(
                                          // color: Colors.red,
                                          width:
                                              SizeVariables.getWidth(context) *
                                                  0.5,
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
                                                width: SizeVariables.getWidth(
                                                        context) *
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
                                      left: SizeVariables.getWidth(context) *
                                          0.03,
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
                              desktop: Container(),
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
                                      top: SizeVariables.getHeight(context) *
                                          0.013),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color.fromARGB(
                                              255, 174, 194, 185),
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
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
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
              ),
            ],
          ),
          desktop: Row(),
        ),
      ),
    );
  }
}
