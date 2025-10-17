import 'package:flutter/material.dart';

class Stepperexample extends StatefulWidget {
  const Stepperexample({super.key});

  @override
  State<Stepperexample> createState() => _StepperexampleState();
}

class _StepperexampleState extends State<Stepperexample> {
  int _currentStep = 0;
  final List<Color> _connectorColors = [Colors.red, Colors.green, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.red, child: Text("Stepper Example")),
      ),
      body: Stepper(
         physics:PageScrollPhysics(),

        //Step Callbacks .
        currentStep: _currentStep,
        type: StepperType.horizontal,

        onStepTapped: (step) {
          print(step);
          setState(() {
            _currentStep = step;
          });
        },
        onStepContinue: () {
          if (_currentStep < 2) {
            setState(() {
              _currentStep++;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() => _currentStep -= 1);
          }
        },

        //step callback ends
        //
        // controlsBuilder:(Builder,context ){
        //
        // },
        //

        //styling of Stepper
        // elevation: 3,
        // margin: const EdgeInsets.all(16),
        // connectorColor: MaterialStateProperty.all(Colors.red),

        connectorThickness:1,
        // stepIconBuilder: (stepIndex, stepState) {
        //   // Determine connector color for this step
        //   final connectorColor = stepIndex < _currentStep
        //       ? _connectorColors[stepIndex]
        //       : Colors.grey;
        //
        //   return Container(
        //     width: 40,
        //     height: 40,
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: stepState == StepState.complete
        //           ? Colors.green
        //           : Colors.white,
        //       border:stepState == StepState.complete?Border.all(color:Colors.red, width: 3) : Border.all(color:Colors.blue, width: 3),
        //     ),
        //     alignment: Alignment.center,
        //     child: Text("${stepIndex + 1}"),
        //   );
        // },

        controlsBuilder: (context, details) {
          // Custom Next/Back buttons
          return Row(
            children: [
              ElevatedButton(
                onPressed: details.onStepContinue,
                child: const Text("Next"),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: details.onStepCancel,
                child: const Text("Back"),
              ),
            ],
          );
        },

        steps: [
          Step(
          label: Text("person"),
            subtitle: Text("person"),
            title: Icon(Icons.person),
            content: Text("Authentiction"),
            isActive: _currentStep >= 0,
            state: _currentStep > 0 ? StepState.complete : StepState.editing,
              stepStyle: StepStyle(
                 
                  color:Colors.red,
                   connectorColor: Colors.blue,
                // indexStyle:TextStyle(
                //     fontSize: 20,
                // ),
                

              )
          ),

          Step(
            title: Icon(Icons.settings),
            content: Text("Setting"),
            isActive: _currentStep >= 1,
            state: _currentStep > 1 ? StepState.complete : StepState.editing,
          ),

          Step(
            subtitle: Text("information"),
            title: Icon(Icons.add),
            content: Text("information"),
            isActive: _currentStep >= 2,
            state: _currentStep > 2 ? StepState.complete : StepState.editing,

          ),
        ],
      ),
    );
  }
}
