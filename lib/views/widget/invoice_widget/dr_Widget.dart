import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../res/mediaQuery.dart';
import '../dashboardWidget/lastInvoice/invoiceListContainer.dart';

class Dr_Widget extends StatefulWidget {
  // const Dr_Widget({Key? key}) : super(key: key);

  @override
  State<Dr_Widget> createState() => _Dr_WidgetState();
}

class _Dr_WidgetState extends State<Dr_Widget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height > 750
          ? 67.h
          : height < 650
              ? 64.h
              : 60.h,
      width: 400,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8),
          child: ContainerStyleInvoice(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeVariables.getWidth(context) * 0.3,
                        child: Text(
                          'Flipkart India Pvt Ltd.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: Text(
                          '\₹123617',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          '2023-01-13',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.arrow_right_alt_sharp,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
