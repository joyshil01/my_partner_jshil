import 'package:flutter/material.dart';

class DateRangePicker extends StatelessWidget {
  final VoidCallback onPressed;
  final DateTime start;
  final DateTime end;
  // final double width;

  DateRangePicker({
    required this.onPressed,
    required this.end,
    required this.start,
    // required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: Colors.white,
          elevation: 0,
          onPrimary: Colors.black,
          // textStyle: TextStyle(color: Colors.black)
        ),
        child: Text(
            '${start.day}/${start.month}/${start.year} - ${end.day}/${end.month}/${end.year}'),
        onPressed: onPressed,
      ),
    );
  }
}
