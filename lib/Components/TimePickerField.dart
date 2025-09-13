import 'package:flutter/material.dart';

class TimePickerField extends StatefulWidget {
  TimePickerField({
    super.key,
    required this.context,
    required this.timeController,
  });
  final BuildContext context;
  TextEditingController timeController;

  @override
  State<TimePickerField> createState() => _TimePickerFieldState();
}

class _TimePickerFieldState extends State<TimePickerField> {
  //final TextEditingController _timeController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          // Pour forcer le format 24h
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (pickedTime != null) {
      setState(() {
        final hour = pickedTime.hour.toString().padLeft(2, '0');
        final minute = pickedTime.minute.toString().padLeft(2, '0');
        widget.timeController.text = "$hour:$minute";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(widget.context).size.width / 3,
      height: 50,
      child: TextField(
        controller: widget.timeController,
        readOnly: true,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 73, 107, 180)),
          ),
          hintText: "hh:mm",
          suffixIcon: IconButton(
            icon: const Icon(Icons.access_time),
            onPressed: () => _selectTime(widget.context),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 73, 107, 180)),
          ),
        ),
      ),
    );
  }
}
