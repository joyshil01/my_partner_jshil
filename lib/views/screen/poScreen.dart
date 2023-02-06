import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor/res/mediaQuery.dart';
import 'package:vendor/routes/routeName.dart';
import 'package:vendor/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';
import '../../res/components/date_range_picker.dart';
import '../responsive.dart';

class PoScreen extends StatefulWidget {
  // const PoScreen({Key? key}) : super(key: key);

  @override
  State<PoScreen> createState() => _PoScreenState();
}

class _PoScreenState extends State<PoScreen> {
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(DateTime.now().year, DateTime.now().month, 1),
    end: DateTime(DateTime.now().year, DateTime.now().month + 1, 0),
  );
  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        automaticallyImplyLeading: false,
        title: Text(
          "Purchase oders",
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 22,
                color: Colors.white,
              ),
        ),
      ),
      body: Responsive(
        mobile: Column(
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
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                // height: SizeVariables.getHeight(context) * 0.81,
                height: height > 750
                    ? 81.8.h
                    : height < 650
                        ? 103.h
                        : 78.3.h,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.025,
                      right: SizeVariables.getWidth(context) * 0.025,
                      top: SizeVariables.getHeight(context) * 0.01,
                      bottom: SizeVariables.getHeight(context) * 0.01,
                    ),
                    child: InkWell(
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
                                    left:
                                        SizeVariables.getWidth(context) * 0.04),
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
              ),
            ),
          ],
        ),
        desktop: Container(),
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
