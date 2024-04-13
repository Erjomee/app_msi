import 'package:flutter/material.dart';

class CustomFormField {
  static Widget LabelField(String LabelField) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Text(
        LabelField,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  static InputField(String HintText, TextEditingController controller,
      {isPassword = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(hintText: HintText),
      obscureText: isPassword,
    );
  }

  static Widget SubmitButton(
      BuildContext context, String Label, Function? action) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/home', arguments: action!());
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue, // Set text color to white
        shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.zero, // Set border radius to zero for square corners
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          Label,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
