import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vendor/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';
import '../../res/mediaQuery.dart';
import '../../routes/routeName.dart';

class ReconciliationScreen extends StatefulWidget {
  List<Map<String, dynamic>> images = [
    {
      'image': "assets/menu/ticket-form.svg",
      'route': RouteNames.upload_invoice,
      'name': "Upload invoice",
    },
    {
      'image': "assets/menu/ticket-form.svg",
      'route': RouteNames.upload_cr_note,
      'name': "Upload Cr Note"
    },
    {
      "image": "assets/menu/ticket-form.svg",
      "route": RouteNames.upload_account_statement,
      "name": "upload Account Statement",
    },
    {
      "image": "assets/menu/ticket-form.svg",
      "route": RouteNames.miscellaneous,
      "name": "Miscellaneous",
    },
  ];
  @override
  State<ReconciliationScreen> createState() => _ReconciliationScreenState();
}

class _ReconciliationScreenState extends State<ReconciliationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        automaticallyImplyLeading: false,
        title: Text(
          "Reconciliation",
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 22,
                color: Colors.white,
              ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: SizeVariables.getWidth(context) * 0.025,
          right: SizeVariables.getWidth(context) * 0.025,
        ),
        height: double.infinity,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(25),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, widget.images[index]['route']);
                },
                child: ContainerStyleInvoice(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        widget.images[index]['image'],
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(height: SizeVariables.getHeight(context) * 0.02),
                      Text(
                        widget.images[index]['name'],
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
