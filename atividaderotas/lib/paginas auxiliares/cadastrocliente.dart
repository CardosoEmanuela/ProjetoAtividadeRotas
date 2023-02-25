import 'package:atividaderotas/paginas%20principais/cadastros.dart';
import 'package:atividaderotas/util/componentes.dart';
import 'package:atividaderotas/paginas%20auxiliares/cliente.dart';
import 'package:flutter/material.dart';

class CadastroCliente extends StatefulWidget {
  List<Cliente>? listaClientes;
  Function? atualizaPagina;
  CadastroCliente({Key? key, this.listaClientes, this.atualizaPagina})
      : super(key: key);

  @override
  State<CadastroCliente> createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  cadastrar() {
    String nome = nomeController.text;
    String email = emailController.text;
    String senha = senhaController.text;
    Cliente c = Cliente(nome, email, senha);
    widget.listaClientes!.add(c);
    widget.atualizaPagina!();
    Navigator.pop(context);
    // Navigator.of(context).pushNamed('/Clientes');
  }

  viabilidade() {
    Navigator.of(context).pushNamed('/Clientes');
  }

  String msg = "Informe os seus dados";

  limparCampos() {
    nomeController.text = "";
    emailController.text = "";
    senhaController.text = "";
    setState(() {
      msg = "Informe os dados";
      formController = GlobalKey<FormState>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar("Cadastro Cliente", limparCampos),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(40.0),
          child: Form(
            key: formController,
            child: SingleChildScrollView(
              child: Card(
                elevation: 16.0,
                shadowColor: Colors.deepPurple,
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(10)),
                          Componentes().iconeGrande(),
                          Padding(padding: EdgeInsets.all(10)),
                          Componentes().criaInputTexto(TextInputType.text,
                              'Nome', nomeController, false, 'Informe o nome'),
                          Padding(padding: EdgeInsets.all(10)),
                          Componentes().criaInputTexto(
                              TextInputType.text,
                              'E-mail',
                              emailController,
                              false,
                              'Informe o e-mail'),
                          Padding(padding: EdgeInsets.all(10)),
                          Componentes().criaInputTexto(
                              TextInputType.number,
                              'Senha',
                              senhaController,
                              true,
                              'Informe a senha'),
                          Padding(padding: EdgeInsets.all(20)),
                          Componentes().criaBotao(
                              formController, cadastrar, "Cadastrar"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
