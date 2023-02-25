import 'package:atividaderotas/util/componentes.dart';
import 'package:atividaderotas/paginas%20principais/produtos.dart';
import 'package:flutter/material.dart';

void main() => runApp(Cadastro());

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Color.fromARGB(255, 255, 252, 93)),
        home: Scaffold(
           appBar: Componentes().criaAppBarLiso("Área administrativa"),
            drawer: Drawer(
                child: ListView(
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.add_box),
                    title: Text("Produto"),
                    subtitle: Text(""),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).pushNamed('/CadastroProduto');
                    }),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Cliente"),
                  subtitle: Text(""),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pushNamed('/CadastroCliente');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.list_alt_rounded),
                  title: Text("Lista Clientes"),
                  subtitle: Text(""),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pushNamed('/Clientes');
                  },
                )
              ],
            ))));
  }
}
