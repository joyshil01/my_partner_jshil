import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vendor/res/components/buttonStyle.dart';
import 'package:vendor/res/mediaQuery.dart';
import 'package:vendor/views/widget/quotationformWidget/formheader_Container.dart';

class QuotationForm_Screen extends StatefulWidget {
  @override
  State<QuotationForm_Screen> createState() => _QuotationForm_ScreenState();
}

class _QuotationForm_ScreenState extends State<QuotationForm_Screen> {
  TextEditingController _quantity = new TextEditingController();
  TextEditingController _price = new TextEditingController();
  TextEditingController _discount = new TextEditingController();
  TextEditingController _gst = new TextEditingController();
  TextEditingController _total = new TextEditingController();
  TextEditingController _ddate = new TextEditingController();
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  var details = "FOR";
  List<String> detail = ["FOR", "FOB", "CIF", "Ex-Works"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).bottomAppBarColor,
        ),
        // centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Quotations input",
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 22,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Items details of PR1673353508/1',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: SizeVariables.getHeight(context) * 0.01,
              ),
              Container_Header(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: SizeVariables.getWidth(context) * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Item code',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      '010004402',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Required quantity',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      '100/kg',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.013,
                    ),
                    Container(
                      width: SizeVariables.getWidth(context) * 0.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Item name',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: SizeVariables.getWidth(context) *
                                          0.01),
                                  child: Icon(
                                    Icons.info_outline_rounded,
                                    size: 15,
                                    color: Theme.of(context).bottomAppBarColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'keyboard with lights',
                                style: Theme.of(context).textTheme.bodyText1,
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
                  left: SizeVariables.getWidth(context) * 0.025,
                ),
                child: Column(
                  children: [
                    Container(
                      width: SizeVariables.getWidth(context) * 0.75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: SizeVariables.getWidth(context) * 0.3,
                            child: TextFormField(
                              controller: _quantity,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(context).bottomAppBarColor,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color:
                                          Color.fromARGB(255, 194, 191, 191)),
                                ),
                                // border: InputBorder.none,
                                labelText: 'Quantity',
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 18, color: Colors.black),
                              ),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.black),
                              showCursor: true,
                              cursorColor: Colors.black,
                            ),
                          ),
                          Container(
                            width: SizeVariables.getWidth(context) * 0.3,
                            child: TextFormField(
                              controller: _price,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(context).bottomAppBarColor,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromARGB(255, 194, 191, 191),
                                  ),
                                ),
                                // border: InputBorder.none,
                                labelText: 'Price',
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 18, color: Colors.black),
                              ),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.black),
                              showCursor: true,
                              cursorColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: SizeVariables.getWidth(context) * 0.75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: SizeVariables.getWidth(context) * 0.3,
                            child: TextFormField(
                              controller: _discount,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(context).bottomAppBarColor,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color:
                                          Color.fromARGB(255, 194, 191, 191)),
                                ),
                                // border: InputBorder.none,
                                labelText: 'Discount',
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 18, color: Colors.black),
                              ),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.black),
                              showCursor: true,
                              cursorColor: Colors.black,
                            ),
                          ),
                          Container(
                            width: SizeVariables.getWidth(context) * 0.3,
                            child: TextFormField(
                              controller: _gst,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(context).bottomAppBarColor,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromARGB(255, 194, 191, 191),
                                  ),
                                ),
                                // border: InputBorder.none,
                                labelText: 'GST(%)',
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 18, color: Colors.black),
                              ),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.black),
                              showCursor: true,
                              cursorColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: SizeVariables.getWidth(context) * 0.75,
                      child: TextFormField(
                        controller: _quantity,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Theme.of(context).bottomAppBarColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 194, 191, 191),
                            ),
                          ),
                          // border: InputBorder.none,
                          labelText: 'Total',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 18, color: Colors.black),
                        ),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.black),
                        showCursor: true,
                        cursorColor: Colors.black,
                      ),
                    ),
                    Container(
                      width: SizeVariables.getWidth(context) * 0.75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: SizeVariables.getHeight(context) * 0.02,
                            ),
                            width: SizeVariables.getWidth(context) * 0.3,
                            child: Column(
                              children: [
                                Container(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Delivery mode',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: DropdownButton<String>(
                                    underline: Container(),
                                    iconSize: 25,
                                    icon: const Icon(
                                      Icons.expand_more,
                                      color: Colors.black,
                                    ),
                                    dropdownColor: Colors.white,
                                    onChanged: (value) {
                                      setState(() {
                                        details = value!;
                                        print(value);
                                      });
                                    },
                                    value: details,
                                    items: detail.map((item) {
                                      return DropdownMenuItem(
                                          value: item,
                                          child: Text(
                                            item,
                                            style:
                                                TextStyle(color: Colors.black),
                                          ));
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: SizeVariables.getWidth(context) * 0.3,
                            child: TextFormField(
                              onTap: () {
                                showDatePicker(
                                  builder: (context, child) => Theme(
                                    data: ThemeData().copyWith(
                                      colorScheme: ColorScheme.dark(
                                        primary: Colors.amber,
                                        surface: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        onSurface: Theme.of(context)
                                            .colorScheme
                                            .background,
                                      ),
                                      dialogBackgroundColor:
                                          Color.fromARGB(255, 42, 42, 42),
                                    ),
                                    child: child!,
                                  ),
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2018),
                                  lastDate: DateTime(2030),
                                ).then(
                                  (value) {
                                    setState(
                                      () {
                                        _ddate.text = dateFormat.format(
                                          DateTime.parse(
                                            value.toString(),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              controller: _ddate,
                              readOnly: true,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(context).bottomAppBarColor,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromARGB(255, 194, 191, 191),
                                  ),
                                ),
                                // border: InputBorder.none,
                                labelText: 'Delivery date',
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 18, color: Colors.black),
                              ),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.black),
                              showCursor: true,
                              cursorColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeVariables.getHeight(context) * 0.03,
              ),
              Container(
                width: SizeVariables.getWidth(context) * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: SizeVariables.getHeight(context) * 0.037,
                      width: SizeVariables.getWidth(context) * 0.26,
                      child: AppButton(
                        label: 'Submitted',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
