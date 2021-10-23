final String tableUsuario = 'Usuario';

class UsuarioFields {
  static final String id = '_id';
  static final String nome = 'nome';
  static final String email = 'email';
  static final String telefone = 'telefone';
  static final String cpf = 'cpf';
}

class Usuario {
  final String nome;
  final int? id;
  final String email;
  final String senha;
  final String telefone;
  final String cpf;

  const Usuario({
    this.id,
    required this.nome,
    required this.email,
    required this.senha,
    required this.telefone,
    required this.cpf,
  });

  Map<String, Object?> toJson() => {
        UsuarioFields.id: id,
        UsuarioFields.nome: nome,
        UsuarioFields.email: email,
        UsuarioFields.telefone: telefone,
        UsuarioFields.cpf: cpf,
      };
}
