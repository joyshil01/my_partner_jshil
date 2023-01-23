import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../res/components/date_range_picker.dart';
import '../../res/mediaQuery.dart';
import '../../routes/routeName.dart';
import '../responsive.dart';
import '../widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';

class QuotationScreen extends StatefulWidget {
  // const QuotationScreen({Key? key}) : super(key: key);

  @override
  State<QuotationScreen> createState() => _QuotationScreenState();
}

class _QuotationScreenState extends State<QuotationScreen> {
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
          "Quotations",
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: 22, color: Colors.white),
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
                // height: SizeVariables.getHeight(context) * 0.8,
                height: height > 750
                    ? 81.8.h
                    : height < 650
                        ? 82.h
                        : 78.2.h,
                child: ListView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 15,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.quotationform);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        // bottom: SizeVariables.getHeight(context) * 0.007,
                        top: SizeVariables.getHeight(context) * 0.015,
                        left: SizeVariables.getWidth(context) * 0.025,
                        right: SizeVariables.getWidth(context) * 0.025,
                      ),
                      child: ContainerStyleInvoice(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // color: Colors.red,
                              child: Row(
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
                                                    'Q00000005',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2!
                                                        .copyWith(fontSize: 12),
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
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 174, 194, 185),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 7.0,
                                        right: 7.0,
                                        top: 2.8,
                                        bottom: 2.8),
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          'Save as',
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
                              ],
                            ),
                          ],
                        ),
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
