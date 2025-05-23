import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TimePicker Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${selectedTime.hour}:${selectedTime.minute}'),
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? timeOfDay = await showTimePicker(
                  // which is called nullble
                  context: context,
                  initialTime: selectedTime,
                  initialEntryMode: TimePickerEntryMode.dial,
                );
                if (timeOfDay != null) {
                  setState(() {
                    selectedTime = timeOfDay;
                  });
                }
              },
              child: const Text('Choose Time'),
            )
          ],
        ),
      ),
    );
  }
}
