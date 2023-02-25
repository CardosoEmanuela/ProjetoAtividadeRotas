import 'package:atividaderotas/paginas%20auxiliares/cadastrocliente.dart';
import 'package:atividaderotas/util/componentes.dart';
import 'package:atividaderotas/paginas%20auxiliares/cliente.dart';
import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  State<Clientes> createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  List<Cliente> listaClientes = [];

  atualizaPagina() {
    setState(() {});
  }

  limpar() {
    setState(() {
      listaClientes = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar("Clientes", limpar),
      body: ListView.builder(
        itemCount: listaClientes.length,
        itemBuilder: (context, indice) {
          (context) => CadastroCliente(
              listaClientes: listaClientes, atualizaPagina: atualizaPagina);
          return ListTile(
            title: Text(listaClientes[indice].nome),
          );
        },
      ),
    );
  }
}
