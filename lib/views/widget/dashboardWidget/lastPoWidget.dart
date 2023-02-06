import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../res/components/containerStyle.dart';
import '../../../res/mediaQuery.dart';
import '../../../routes/routeName.dart';
import '../../responsive.dart';
import 'lastInvoice/invoiceListContainer.dart';

class LastPoWidget extends StatefulWidget {
  @override
  State<LastPoWidget> createState() => _LastPoWidgetState();
}

class _LastPoWidgetState extends State<LastPoWidget> {
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
                    "Last Purchase oders",
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
                        ? 63.h
                        : 60.h,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.po_details);
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        top: SizeVariables.getHeight(context) * 0.015,
                      ),
                      child: ContainerStyleInvoice(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'PO2301011',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'PR2211002/19',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
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
                                            .bodyText1!
                                            .copyWith(fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeVariables.getHeight(context) * 0.01,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeVariables.getWidth(context) * 0.04),
                              child: Container(
                                // color: Colors.amber,
                                width: SizeVariables.getWidth(context) * 0.75,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Container(
                                    //   // color: Colors.amber,
                                    //   width: 48,
                                    //   child: Text(
                                    //     'APPEX CORPORATE SOLUTION',
                                    //     style:
                                    //         Theme.of(context).textTheme.bodyText1,
                                    //     overflow: TextOverflow.ellipsis,
                                    //   ),
                                    // ),
                                    Container(
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          '2023-01-21',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
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
