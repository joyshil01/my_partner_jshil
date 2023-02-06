import 'package:flutter/material.dart';
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
              Container(
                height: height > 750
                    ? 64.h
                    : height < 650
                        ? 71.h
                        : 67.h,
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
                            Container(
                              // color: Colors.red,
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              child: FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(
                                                  'INV00000005',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .copyWith(fontSize: 16),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
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
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
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
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
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
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Container(
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
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Color.fromARGB(
                                                          255, 174, 194, 185),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        left: 7.0,
                                                        right: 7.0,
                                                        top: 2.8,
                                                        bottom: 2.8,
                                                      ),
                                                      child: Center(
                                                        child: FittedBox(
                                                          fit: BoxFit.contain,
                                                          child: Text(
                                                            'Open Invoice',
                                                            style:
                                                                Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText1!
                                                                    .copyWith(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          63,
                                                                          147,
                                                                          84),
                                                                      fontSize:
                                                                          12,
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
