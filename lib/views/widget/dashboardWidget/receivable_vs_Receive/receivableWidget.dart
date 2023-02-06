import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vendor/res/components/containerStyle.dart';
import 'package:vendor/res/mediaQuery.dart';
import 'package:vendor/views/widget/dashboardWidget/receivable_vs_Receive/pie_Chart/pie_Card.dart';

import '../../../responsive.dart';

class ReceivableWidget extends StatefulWidget {
  // const ReceivableWidget({Key? key}) : super(key: key);

  @override
  State<ReceivableWidget> createState() => _ReceivableWidgetState();
}

class _ReceivableWidgetState extends State<ReceivableWidget> {
  DateTime _dateTime = DateTime(DateTime.now().year);
  DateFormat dateFormat = DateFormat('yyyy');
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        // height: SizeVariables.getHeight(context) * 0.34,
        child: ContainerStyle(
          // height: SizeVariables.getHeight(context) * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Receivable Vs Received",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 19),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Select Year'),
                          content: Container(
                            height: SizeVariables.getHeight(context) * 0.2,
                            width: SizeVariables.getWidth(context) * 0.2,
                            child: YearPicker(
                              firstDate: DateTime(DateTime.now().year - 10),
                              lastDate: DateTime(DateTime.now().year + 10),
                              initialDate: DateTime.now(),
                              selectedDate: _dateTime,
                              onChanged: (value) {
                                setState(
                                  () {
                                    _dateTime = value;
                                  },
                                );
                                print(
                                    'Year Selected: ${dateFormat.format(_dateTime)}');
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            SizeVariables.getWidth(context) * 0.05),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                          child: Container(
                            width: SizeVariables.getWidth(context) * 0.25,
                            height: SizeVariables.getHeight(context) * 0.045,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                                color: 
                                const Color.fromARGB(255, 181, 179, 179)
                                    .withOpacity(0.1),

                                // Colors.red,
                                border: const Border(
                                    bottom: BorderSide(width: 0.06),
                                    top: BorderSide(width: 0.06),
                                    right: BorderSide(width: 0.06),
                                    left: BorderSide(width: 0.06))),
                            child: Center(
                              child: Text(
                                _dateTime == null
                                    ? 'Select Years'
                                    : '${dateFormat.format(_dateTime)}',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeVariables.getHeight(context) * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Pie_Card(),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: SizeVariables.getHeight(context) * 0.09,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          FittedBox(
                            child: Text(
                              'Receivable',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            width: SizeVariables.getHeight(context) * 0.004,
                          ),
                          Container(
                            height: 15,
                            width: 18,
                            color: Color(0xfff003060),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          FittedBox(
                            child: Text(
                              'Received',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            width: SizeVariables.getHeight(context) * 0.004,
                          ),
                          Container(
                            height: 15,
                            width: 18,
                            color: Color.fromARGB(255, 147, 146, 146),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      desktop: Row(),
    );
  }
}
