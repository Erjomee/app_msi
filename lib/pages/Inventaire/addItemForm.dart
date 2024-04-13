import 'dart:io';

import 'package:app_msi/Object/item.dart';
import 'package:app_msi/templates/CustomForm.dart';
import 'package:app_msi/templates/CustomScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class addItemForm extends StatefulWidget {
  addItemForm({super.key});

  @override
  State<addItemForm> createState() => _addItemFormState();
}

class _addItemFormState extends State<addItemForm> {
  final TextEditingController productNameController = TextEditingController();

  final TextEditingController productDescriptionController =
      TextEditingController();

  final TextEditingController productPriceController = TextEditingController();

  final TextEditingController productAmmountController =
      TextEditingController();

  final TextEditingController productIsForSaleController =
      TextEditingController();

  int typeOption = 1;
  File? image;
  double price = 0.0;
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        hasDrawer: false,
        isconnected: false,
        title: "Nouveau produit",
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomFormField.LabelField("Nom du produit"),
              CustomFormField.InputField("Brouette", productNameController),
              CustomFormField.LabelField("Type de produit"),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                      Flexible(
                        child: ListTile(
                          title: const Text('Outils'),
                          leading: Radio<int>(
                            value: 1,
                            groupValue: typeOption,
                            onChanged: (value) {
                              setState(() {
                                typeOption = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: ListTile(
                            title: const Text('Entretien'),
                            leading: Radio<int>(
                              value: 2,
                              groupValue: typeOption,
                              onChanged: (value) {
                                setState(() {
                                  typeOption = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 1,
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                      color: Colors.amber,
                      child: const Icon(Icons.folder),
                      onPressed: () {
                        _pickImage(ImageSource.gallery);
                      }),
                  MaterialButton(
                      color: Colors.red,
                      child: const Icon(Icons.camera_alt),
                      onPressed: () {
                        _pickImage(ImageSource.camera);
                      }),
                ],
              ),
              const SizedBox(width: 1, height: 10),
              image != null
                  ? Column(
                      children: [
                        Container(
                          width: 250, // Définir la largeur de l'image ici
                          height: 250, // Définir la hauteur de l'image ici
                          child: Image.file(
                            image!,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                child: TextField(
                                  controller: productPriceController,
                                  decoration: InputDecoration(
                                      labelText: "Prix (euros)",
                                      hintText: price.toString()),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ], // Only numbers can be entered
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                controller: productAmmountController,
                                decoration: InputDecoration(
                                    labelText: "Quantité",
                                    hintText: amount.toString()),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ], // Only numbers can be entered
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomFormField.SubmitButton(
                            context, "Déposer l'annonce", () {
                          debugPrint(
                              "Product name: ${productNameController.text}");
                          debugPrint("Product type: $typeOption");
                          debugPrint(
                              "Product description: ${productDescriptionController.text}");
                          debugPrint(
                              "Product price: ${productPriceController.text}");
                          debugPrint(
                              "Product amount: ${productAmmountController.text}");

                          Item new_item = Item(
                              name: productNameController.text,
                              product_type: "entretient",
                              image: image,
                              unit_price: productPriceController.text,
                              amount: productAmmountController.text,
                              for_sale: true);

                          return new_item;
                        })
                      ],
                    )
                  : const Text('Veuillez fournir une photo du produit '),
            ],
          ),
        ));
  }

  // Méthode de gestion de prise d'image
  Future _pickImage(ImageSource imgSource) async {
    final returnedimage = await ImagePicker().pickImage(source: imgSource);

    if (returnedimage == null) {
      return;
    } else {
      setState(() {
        image = File(returnedimage.path);
      });
    }
  }
}
