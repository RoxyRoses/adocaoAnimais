import 'package:flutter/material.dart';

class TelefoneWidget extends StatefulWidget {
  final TextEditingController controller;

  const TelefoneWidget({Key? key, required this.controller}) : super(key: key);

  @override
  _TelefoneWidgetState createState() => _TelefoneWidgetState();
}

class _TelefoneWidgetState extends State<TelefoneWidget> {
  @override
  Widget build(BuildContext context) => TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: 'Telefone',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        prefixIcon: Icon(Icons.phone),
      ),
      keyboardType: TextInputType.phone,
      autofillHints: [AutofillHints.telephoneNumber],
      validator: (phone) {
        final RegExp numberRegExp =
            RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
        if (phone == null || phone.isEmpty) {
          return 'Digite seu telefone';
        } else if (numberRegExp.hasMatch(phone)) {
          return 'Digite um telefone valido';
        }
        return null;
      });
}
