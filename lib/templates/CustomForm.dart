import 'package:flutter/material.dart';

class CustomFormField {
  static Widget LabelField(String LabelField) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
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

  static Widget SubmitButton(BuildContext context, String Label,
      {TextEditingController? firstnameController,
      TextEditingController? lastnameController,
      required TextEditingController usercontroller,
      required TextEditingController passwordcontroller,
      TextEditingController? confirmpasswordController}) {
    return ElevatedButton(
      onPressed: () {
        debugPrint("FirstName: ${firstnameController?.text}");
        debugPrint("LastName: ${lastnameController?.text}");

        debugPrint("Username: ${usercontroller.text}");
        debugPrint("Password: ${passwordcontroller.text}");
        debugPrint("Confirmed password: ${confirmpasswordController?.text}");

        Navigator.pushReplacementNamed(context, '/home');
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
