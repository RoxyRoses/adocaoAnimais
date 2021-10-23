import 'package:flutter/material.dart';
import 'package:validadores/validadores.dart';

class CpfField extends StatefulWidget {
  final TextEditingController controller;
  const CpfField({Key? key, required this.controller}) : super(key: key);

  @override
  _CpfFieldState createState() => _CpfFieldState();
}

class _CpfFieldState extends State<CpfField> {
  @override
  Widget build(BuildContext context) => TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: 'CPF',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
      keyboardType: TextInputType.number,
      validator: (cpf) {
        return Validador()
            .add(Validar.CPF, msg: 'CPF Inválido')
            .add(Validar.OBRIGATORIO, msg: 'Digite seu CPF')
            .minLength(11)
            .maxLength(11)
            .valido(cpf, clearNoNumber: true);
      });
}
