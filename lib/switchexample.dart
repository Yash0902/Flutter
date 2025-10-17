import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Switchexample extends StatefulWidget {
  const Switchexample({super.key});

  @override
  State<Switchexample> createState() => _SwitchexampleState();
}

class _SwitchexampleState extends State<Switchexample> {
  bool isswitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Switch.adaptive(

            applyCupertinoTheme: true,


          // Colors properties of switch

          // activeThumbColor:Colors.red, // color of the thumb when switch is ON

          // activeTrackColor:Colors.purpleAccent, // color of the track when ON

          // inactiveThumbColor:Colors.blue, // color of the thumb when switch is OFF

          // inactiveTrackColor:Colors.red, // color of the track when switch is OFF



          // image Properties

          // activeThumbImage: const AssetImage('assets/on_thumb.png'), // image displayed inside thumb when ON
          //
          //
          // onActiveThumbImageError: (exception, stackTrace) {
          //   // handle image loading error for active thumb
          //   debugPrint('Active thumb image error: $exception');
          // },
          //
          //
          // inactiveThumbImage: const AssetImage(
          //     'assets/off_thumb.png'), // image displayed inside thumb when OFF
          //
          //
          // onInactiveThumbImageError: (exception, stackTrace) {
          //   debugPrint('Inactive thumb image error: $exception');  // handle image loading error for inactive thumb
          // },


          // thumbColor: WidgetStateColor.resolveWith((states) {
          //
          //   if (states.contains(WidgetState.pressed)) {
          //     return Colors.orange;
          //   }
          //   return Colors.deepPurple;
          // }),
          //
          // trackColor: WidgetStateColor.resolveWith((states) {
          //
          //   if (states.contains(WidgetState.selected)) {
          //     return Colors.purple.shade300;
          //   }
          //   return Colors.grey.shade400;
          // }),
          //
          //

          // trackOutlineColor: WidgetStatePropertyAll(Colors.black), // outline/border color of the track
          // trackOutlineWidth: MaterialStateProperty.all(2.0), // thickness of track outline

          // mouseCursor: SystemMouseCursors.click, // mouse cursor style when hovering over the switch
          //
          // focusColor: Colors.red, // color when switch is focused (keyboard nav)
          //
          // hoverColor: Colors.blue.withOpacity(0.2),
          //
          //
          //
          // splashRadius:20,

          // onFocusChange: (hasFocus) {
          //   print('Switch focus changed: $hasFocus');
          // },

          // padding: const EdgeInsets.all(10),







          value: isswitch,

          onChanged: (value) {
            setState(() {
              // print(value);
              isswitch = value;
            });
          },
        ),

      ),
    );
  }
}
