import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper Widget"),
      ),
      body: Center(
        child: Stepper(
          steps: [
            Step(
              isActive: _currentStep == 0,
              title: const Text('Step 1'),
              content: const Text(
                'Information for step 1',
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            Step(
              isActive: _currentStep == 1,
              title: const Text('Step 2'),
              content: const Text(
                'Information for step 2',
                style: TextStyle(color: Colors.orangeAccent),
              ),
            ),
            Step(
              isActive: _currentStep == 2,
              title: const Text('Step 3'),
              content: const Text(
                'Information for step 3',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
          type: StepperType.horizontal,
        ),
      ),
    );
  }
}
