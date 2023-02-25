import 'package:atividaderotas/paginas%20auxiliares/produto.dart';
import 'package:atividaderotas/paginas%20principais/produtos.dart';
import 'package:atividaderotas/util/componentes.dart';
import 'package:flutter/material.dart';

class CadastroProduto extends StatefulWidget {
  List<Produto>? listaProdutos;
  Function? atualizaPagina;
  CadastroProduto({Key? key, this.listaProdutos, this.atualizaPagina})
      : super(key: key);

  @override
  State<CadastroProduto> createState() => _CadastroProdutoState();
}

class _CadastroProdutoState extends State<CadastroProduto> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController valorController = TextEditingController();
  TextEditingController imagemController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  cadastrar() {
    String nome = nomeController.text;
    String valor = valorController.text;
    String descricao = descricaoController.text;
    Produto p = Produto(nome, valor, descricao);
    widget.listaProdutos!.add(p);
    Navigator.of(context).pushNamed('/Produtos');
  }

  salvar() {}

  viabilidade() {
    Navigator.of(context).pushNamed('/Produtos');
  }

  String msg = "Informe os seus dados";

  limparCampos() {
    nomeController.text = "";
    valorController.text = "";
    descricaoController.text = "";
    setState(() {
      msg = "Informe os dados";
      formController = GlobalKey<FormState>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar("Cadastro Produto", limparCampos),
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
                          Componentes().iconeImage(),
                          Componentes()
                              .criaBotaoImagem("Update imagem", salvar),
                          Padding(padding: EdgeInsets.all(10)),
                          Componentes().criaInputTexto(
                              TextInputType.text,
                              'Produto',
                              nomeController,
                              false,
                              'Informe o produto'),
                          Padding(padding: EdgeInsets.all(10)),
                          Componentes().criaInputTexto(
                              TextInputType.number,
                              'Valor',
                              valorController,
                              false,
                              'Informe o valor'),
                          Padding(padding: EdgeInsets.all(10)),
                          Componentes().criaInputTexto(
                              TextInputType.text,
                              'Descrição',
                              descricaoController,
                              false,
                              'Informe a descrição'),
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
