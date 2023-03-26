import 'package:agenda_de_contatos/model/DAO/contact_dao.dart';
import 'package:agenda_de_contatos/model/contact.dart';
import 'package:flutter/material.dart';

import 'package:agenda_de_contatos/screens/new_contact/components/custom_textformfield.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  bool isFavorite = true;
  var nameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController =
      MaskedTextController(mask: "+00 000 00000-0000", text: "+55 ");
  final _formKey = GlobalKey<FormState>();
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo contato"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var contact = Contact(
              name: nameController.text,
              lastName: lastNameController.text,
              photoPath: "assets/images/${nameController.text}.jpg",
              phone: phoneController.text,
              email: emailController.text,
              isFavorite: _isFavorite,
            );
            int result = await ContactDAO.insert(contact.toMap());
            SnackBar snack;
            if (result != 0) {
              snack = const SnackBar(
                content: Text("Contato cadastrado com sucesso!!!"),
                backgroundColor: Colors.green,
              );
            } else {
              snack = const SnackBar(
                content: Text("Não foi possível cadastrar o contato!!!"),
                backgroundColor: Colors.orange,
              );
            }
            ScaffoldMessenger.of(context).showSnackBar(snack);
          }
        },
        child: const Icon(Icons.save),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.camera_alt),
                  iconSize: 100,
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {},
                ),
                CustomTextFormField(
                  label: "Nome",
                  controller: nameController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O nome não pode ficar em branco";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  label: "Sobrenome",
                  controller: lastNameController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O sobrenome não pode ficar em branco";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  label: "Email",
                  controller: emailController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O email não pode ficar em branco";
                    } else if (value != null && !Validator.email(value)) {
                      return "O email informado é inválido";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomTextFormField(
                  label: "Telefone",
                  controller: phoneController,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "O número de telefone não pode ficar em branco";
                    } else if (value != null && value.length != 18) {
                      return "O número de telefone é inválido";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                ),
                Row(
                  children: [
                    Switch(
                      value: _isFavorite,
                      onChanged: (value) {
                        setState(() {
                          _isFavorite = value;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Favorito",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
