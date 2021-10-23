import 'package:flutter/material.dart';

class NomeField extends StatefulWidget {
  final TextEditingController controller;

  const NomeField({Key? key, required this.controller}) : super(key: key);

  @override
  _NomeFieldState createState() => _NomeFieldState();
}

class _NomeFieldState extends State<NomeField> {
  @override
  Widget build(BuildContext context) => TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: 'Nome',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        prefixIcon: Icon(Icons.face),
      ),
      keyboardType: TextInputType.name,
      autofillHints: [AutofillHints.name],
      validator: (name) {
        final RegExp numberRegExp = RegExp(r'\d');
        if (name == null || name.isEmpty) {
          return 'Digite seu nome';
        } else if (numberRegExp.hasMatch(name)) {
          return 'Digite um nome valido';
        }
        return null;
      });
}
