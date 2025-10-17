import 'package:flutter/material.dart';

class Sliderexample extends StatefulWidget {
  const Sliderexample({super.key});

  @override
  State<Sliderexample> createState() => _SliderexampleState();
}

class _SliderexampleState extends State<Sliderexample> {
  double _value = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Slider Example"),
      ),
      body: Center(
        child: Slider(
          onChangeStart:(start){
                print("start ${start}");
          },
          onChangeEnd:(end){
             print("end ${end}");
          },


          // divisions: 6,


          secondaryTrackValue: 20,


          // activeColor: Colors.red,
          //  inactiveColor: Colors.blue,
          secondaryActiveColor: Colors.yellow,
          thumbColor:Colors.red,



          // label: "range",


          min: 0.0,

          max: 100.0,
          value: _value,
          onChanged: (value) {
            // print(value);
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );
  }
}
