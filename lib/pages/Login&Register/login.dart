import 'package:app_msi/templates/CustomForm.dart';
import 'package:app_msi/templates/CustomScaffold.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      isconnected: false,
      hasDrawer: true,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  "CONNEXION",
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
                    CustomFormField.InputField("Test1234", passwordController,
                        isPassword: true),
                    const SizedBox(height: 40),
                    CustomFormField.SubmitButton(context, "Se connecter",
                        usercontroller: usernameController,
                        passwordcontroller: passwordController),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            // Action to perform when the text is clicked
                            Navigator.pushNamed(context, '/register');
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 0),
                            child: Text(
                              'Pas encore inscrit ?',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      title: "Page de connexion",
    );
  }
}
