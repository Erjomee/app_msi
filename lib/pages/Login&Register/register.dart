import 'package:app_msi/templates/CustomScaffold.dart';
import 'package:app_msi/templates/CustomForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  Register({super.key});

  // TextEditingController firstnameController = TextEditingController();
  // TextEditingController lastnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      isconnected: false,
      hasDrawer: false,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  "Inscription",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFormField.LabelField("Nom utilisateur"),
                    CustomFormField.InputField("Jean", usernameController),
                    CustomFormField.LabelField("Mot de passe"),
                    CustomFormField.InputField("Test1234", passwordController),
                    CustomFormField.LabelField("Confirmer le mot de passe"),
                    CustomFormField.InputField("Test1234", confirmpasswordController),
                    const SizedBox(height: 40),
                    CustomFormField.SubmitButton(context, "Soumettre", () {
                      debugPrint("Username: ${usernameController.text}");
                      debugPrint("Password: ${passwordController.text}");
                      debugPrint(
                          "Confirmed password: ${confirmpasswordController.text}");
                    })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      title: "Page d'inscription",
    );
  }
}
