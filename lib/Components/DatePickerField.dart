import 'package:flutter/material.dart';

class DatePickerField extends StatefulWidget {
  DatePickerField({
    super.key,
    required this.context,
    required this.dateController,
  });
  BuildContext context;
  TextEditingController dateController;

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  //final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      locale: const Locale("fr", "FR"), // Pour format JJ/MM/AAAA
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: const Color.fromARGB(
                255,
                73,
                107,
                180,
              ), // Couleur du header + boutons

              onSurface: Colors.black54, // Texte des jours
              surface: Colors.white, // Fond principal
            ),
            dialogBackgroundColor: Colors.grey[100], // Fond du picker
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      setState(() {
        widget.dateController.text =
            "${pickedDate.day.toString().padLeft(2, '0')}/"
            "${pickedDate.month.toString().padLeft(2, '0')}/"
            "${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(widget.context).size.width / 2.5,
      height: 50,
      child: TextField(
        controller: widget.dateController,
        readOnly: true, // empêche la saisie directe
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 73, 107, 180)),
          ),
          hintText: "jj/mm/aaaa",
          suffixIcon: IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () => _selectDate(widget.context),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 73, 107, 180)),
          ),
        ),
      ),
    );
  }
}
