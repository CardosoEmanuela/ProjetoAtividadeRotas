
import 'package:atividaderotas/paginas%20auxiliares/cadastroproduto.dart';
import 'package:atividaderotas/paginas%20principais/cadastros.dart';
import 'package:atividaderotas/paginas%20auxiliares/cadastrocliente.dart';
import 'package:atividaderotas/paginas%20principais/login.dart';
import 'package:atividaderotas/paginas%20auxiliares/clientes.dart';
import 'package:atividaderotas/paginas%20auxiliares/descricao.dart';
import 'package:atividaderotas/paginas%20principais/produtos.dart';
import 'package:atividaderotas/paginas%20principais/produtos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => (LoginPage()),
        '/Cadastro': (context) => (Cadastro()),
        '/CadastroCliente': (context) => (CadastroCliente()),
        '/CadastroProduto': (context) => (CadastroProduto()),
        '/Jardineira': (context) => (Jardineira()),
        '/Vestido': (context) => (Vestido()),
        '/Clientes': (context) => (Clientes()),
        '/Produtos': (context) => (Produtos()),
      },
    );
  }
}
