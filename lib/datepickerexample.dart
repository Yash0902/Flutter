import 'package:flutter/material.dart';

// A stateful widget because we need to update UI when date changes
class DatePickerexample extends StatefulWidget {
  const DatePickerexample({super.key});

  @override
  State<DatePickerexample> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerexample> {
  DateTime? selectedDate;

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      helpText: 'Select a Date',
      cancelText: 'Cancel',
      confirmText: 'OK',
      initialDatePickerMode: DatePickerMode.day,
      fieldHintText: "yash",
      // barrierColor: Colors.red,

      // used to disable the date
      selectableDayPredicate: (DateTime date) {
        if (date.weekday == DateTime.sunday ||
            date.weekday == DateTime.saturday) {
          return false;
        }
        return true;
      },
      builder: (context, child) {
        return Center(
          child: SizedBox(
            width: 400,  // set your desired width
            height: 500, // set your desired height
            child: Theme(
              data: Theme.of(context).copyWith(
                datePickerTheme: DatePickerThemeData(
                  dayOverlayColor: MaterialStateProperty.all(
                    Colors.tealAccent.withOpacity(0.2),
                  ),
                  dayBackgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.teal;
                      } else if (states.contains(MaterialState.disabled)) {
                        return Colors.grey.shade300;
                      }
                      return Colors.transparent;
                    },
                  ),
                  todayBackgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) => Colors.purpleAccent,
                  ),
                  dividerColor: Colors.blue,
                ),
              ),
              child: child!,
            ),
          ),
        );
      },
    );

    if (picked != null && picked != selectedDate) {

      setState(() {
        selectedDate = picked;
      });
    }
  }

  Widget _dayBuilder(BuildContext context, DateTime date, DateTime focusedDay) {
    final isSaturday = date.weekday == DateTime.saturday;
    return Center(
      child: Text(
        '${date.day}',
        style: TextStyle(
          color: isSaturday ? Colors.red : Colors.black,
          fontWeight: isSaturday ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker Example"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate == null
                  ? '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}'
                  : 'Selected Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => _pickDate(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text(
                "Pick a Date",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
