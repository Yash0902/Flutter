import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DateTimePickerScreen(),
    );
  }
}

class DateTimePickerScreen extends StatefulWidget {
  const DateTimePickerScreen({super.key});

  @override
  State<DateTimePickerScreen> createState() => _DateTimePickerScreenState();
}

class _DateTimePickerScreenState extends State<DateTimePickerScreen> {
  // Variables to store selected date and time
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  // Function to pick a date
  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),

    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Function to pick a time
  Future<void> _pickTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),

      builder: (context, child) {
        // Customize theme
        return Theme(
          data: Theme.of(context).copyWith(
            timePickerTheme: TimePickerThemeData(

              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(30), // Adjust corner radius
              //   side: const BorderSide(color: Colors.teal, width: 2), // Optional border
              // ),


              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(color: Colors.teal, width: 2),
              ),


              // shape: const StadiumBorder(
              //   side: BorderSide(color: Colors.teal, width: 2),
              // ),


              // Shape of hour/minute selector
              // hourMinuteShape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),

              hourMinuteShape:BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.teal, width: 2),
              ),


              backgroundColor: Colors.blue.shade200,

              cancelButtonStyle: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.black),
              ),

              confirmButtonStyle: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.black),
              ),

              // Border of AM/PM toggle
              dayPeriodBorderSide: BorderSide(color: Colors.teal, width: 2),

              // Background color of AM/PM toggle
              dayPeriodColor: Colors.blue,

              // Shape of the AM/PM toggle
              // dayPeriodShape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(20)),
              // ),

              dayPeriodShape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),


              // Text color of AM/PM
              dayPeriodTextColor: Colors.black,

              // Text style of AM/PM
              dayPeriodTextStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),

              // Background color of dial
              dialBackgroundColor: Colors.blue.shade50,

              // Color of dial hand
              dialHandColor: Colors.teal,

              // Text color of numbers on dial
              dialTextColor: Colors.black,

              // Text style of numbers on dial
              dialTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),

              // Elevation of the time picker dialog
              elevation: 8,

              // Color of icon to switch entry mode (input/manual)
              entryModeIconColor: Colors.black,

              // Text style for help text (like "SELECT TIME")
              helpTextStyle: TextStyle(color: Colors.black, fontSize: 16),

              // Background color for hour/minute selector
              hourMinuteColor: Colors.blue.shade100,




              // Text color for hour/minute selector
              hourMinuteTextColor: Colors.black,

              // Text style for hour/minute numbers
              hourMinuteTextStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),

              timeSelectorSeparatorColor:
                  MaterialStateProperty.resolveWith<Color?>((states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.grey; // disabled state
                    }
                    if (states.contains(MaterialState.selected)) {
                      return Colors.teal; // when selected/focused
                    }
                    return Colors.deepOrange; // default color
                  }),




              timeSelectorSeparatorTextStyle:
                  MaterialStateProperty.resolveWith<TextStyle?>((states) {
                    if (states.contains(MaterialState.selected)) {

                      return const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      );
                    }

                    return const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    );
                  }),



            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  // Helper function to format TimeOfDay
  String _formatTime(TimeOfDay? time) {
    if (time == null) return "--:--";
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return "$hour:$minute";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date & Time Picker"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display selected date
            Text(
              selectedDate == null
                  ? "No date selected"
                  : "Selected Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),

            // Display selected time
            Text(
              "Selected Time: ${_formatTime(selectedTime)}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            // Button to pick date
            ElevatedButton(
              onPressed: () => _pickDate(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text("Pick Date"),
            ),
            const SizedBox(height: 10),

            // Button to pick time
            ElevatedButton(
              onPressed: () => _pickTime(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text("Pick Time"),
            ),
          ],
        ),
      ),
    );
  }
}
