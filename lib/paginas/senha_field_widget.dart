import 'package:flutter/material.dart';
import 'package:validadores/Validador.dart';

class SenhaField extends StatefulWidget {
  final TextEditingController controller;
  const SenhaField({Key? key, required this.controller}) : super(key: key);

  @override
  _SenhaFieldState createState() => _SenhaFieldState();
}

class _SenhaFieldState extends State<SenhaField> {
  @override
  Widget build(BuildContext context) => TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: 'Senha',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        prefixIcon: Icon(Icons.password),
      ),
      keyboardType: TextInputType.text,
      autofillHints: [AutofillHints.password],
      obscureText: true,
      validator: (senha) {
        if (senha == null || senha.isEmpty) {
          return 'Digite uma senha';
        } else if (senha.trim().length < 8) {
          return 'A senha precisa ter pelo menos 8 caracteres';
        }
        return null;
      });
}
