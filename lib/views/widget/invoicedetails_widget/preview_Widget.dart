import 'package:flutter/material.dart';
import 'package:vendor/res/components/containerStyle.dart';
import '../../../res/mediaQuery.dart';

class Preview_Widget extends StatefulWidget {
  // const Preview_Widget({Key? key}) : super(key: key);

  @override
  State<Preview_Widget> createState() => _Preview_WidgetState();
}

class _Preview_WidgetState extends State<Preview_Widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerStyle(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Original for Recipient',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: SizeVariables.getWidth(context) * 0.08,
                            backgroundColor: Colors.green,
                            backgroundImage:
                                const AssetImage('assets/img/profilePic.jpg'),
                            // child: const Icon(Icons.account_box, color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: SizeVariables.getWidth(context) * 0.02,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'INV00000005',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Date: ',
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
                                        '2023-01-12',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Due Date: ',
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
                                        '2023-01-12',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Container(
                    width: SizeVariables.getWidth(context) * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'P.O. Number: ',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '9832-a1',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'P.O. Date: ',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '2023-02-01',
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
                ],
              ),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.015,
            ),
            ContainerStyle(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.red,
                    width: SizeVariables.getWidth(context) * 0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.phone,
                                  color: Theme.of(context).bottomAppBarColor,
                                  size: 18,
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '9062050556',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.email,
                                  color: Theme.of(context).bottomAppBarColor,
                                  size: 18,
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'jshil@vitwo.in',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.language,
                                  color: Theme.of(context).bottomAppBarColor,
                                  size: 18,
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'jshil1999.com',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: SizeVariables.getWidth(context) * 0.44,
                          child: Text(
                            'Test, 4A, Test Flt, NH34, Barasat, Barasat, N24, WB',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.work,
                                  color: Theme.of(context).bottomAppBarColor,
                                  size: 18,
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '07AABCF8078M1Z6',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'State Name: ',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Delhi Code:07',
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
                  Container(
                    width: SizeVariables.getHeight(context) * 0.18,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Flipkart India Pvt Ltd.',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.phone,
                                  color: Theme.of(context).bottomAppBarColor,
                                  size: 18,
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '9012345678',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          // color: Colors.amber,
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.email,
                                  color: Theme.of(context).bottomAppBarColor,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: SizeVariables.getWidth(context)*0.22,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'jshil99@gmail.com',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Text(
                            'unit no. G-1 to G-8 & G-10, , located at Aggarwal City Square, Mangalam Place, 110085, New Delhi, New Delhi, North West Delhi, Delhi',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          // margin: EdgeInsets.all(3),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.work,
                                  color: Theme.of(context).bottomAppBarColor,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: SizeVariables.getHeight(context)*0.15,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '07AABCF8078M1Z3',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.004,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'State Name: ',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Delhi Code:07',
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
                ],
              ),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.015,
            ),
            ContainerStyle(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'SUB TOTAL: ',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '116400',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'IGST TOTAL: ',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '18856.80',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'DISCOUNT: ',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '11640',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'TOTAL AMOUNT: ',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    '123617',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 15),
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
                    width: SizeVariables.getWidth(context) * 0.35,
                    // color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(4),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'AUTHORIZED SIGNATORY',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.amber,
                          margin: EdgeInsets.all(4),
                          height: SizeVariables.getHeight(context) * 0.05,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(14),
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'NOTE:',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'A sales invoice is a document issued by a seller t',
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
    );
  }
}
