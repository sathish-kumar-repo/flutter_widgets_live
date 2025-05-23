import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerWidget extends StatefulWidget {
  const CupertinoDatePickerWidget({super.key});

  @override
  State<CupertinoDatePickerWidget> createState() =>
      _CupertinoDatePickerWidgetState();
}

class _CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
  DateTime dateTime = DateTime(3000, 2, 1, 10, 20);
  /* DateTime(int year,
      [int month = 1,
      int day = 1,
      int hour = 0,
      int minute = 0,
      int second = 0,
      int millisecond = 0,
      int microsecond = 0])
      */
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text('${dateTime.month}-${dateTime.day}-${dateTime.year}'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) => SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  backgroundColor: Colors.white,
                  initialDateTime: dateTime,
                  maximumYear: 3500,
                  minimumYear: 1900,
                  itemExtent: 50,
                  onDateTimeChanged: (DateTime newTime) {
                    setState(() => dateTime = newTime);
                  },
                  use24hFormat: true,
                  mode: CupertinoDatePickerMode.date,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
