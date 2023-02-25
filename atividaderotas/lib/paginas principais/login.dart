import 'package:atividaderotas/util/componentes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    fazLogin() {
      if (txtEmail.text == 'adm' && txtSenha.text == '123') {
        Navigator.of(context).pushNamed('/Cadastro');
        print('SIM${txtEmail.text} - ${txtSenha.text}');
      } else {
        print('NAO${txtEmail.text} - ${txtSenha.text}');
      }
      if(txtEmail.text == 'cliente' && txtSenha.text == '123'){
          Navigator.of(context).pushNamed('/Produtos');
      }
    }

    String msg = "Informe os seus dados";
    limparCampos() {
      txtEmail.text = "";
      txtSenha.text = "";
      setState(() {
        msg = "Informe os dados";
      });
    }

    return Scaffold(
      appBar: Componentes().criaAppBar("Olá, faça seu login!", limparCampos),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Componentes().imagemLogin(),
            Componentes().criaTextFieldLogin(
                'Email', false, TextInputType.emailAddress, txtEmail),
            Componentes().criaTextFieldLogin(
                'Senha', true, TextInputType.none, txtSenha),
            const SizedBox(height: 30),
            Componentes().criaBotaoLogin('Entrar', fazLogin, 50, 200),
          ],
        ),
      ),
    );
  }
}
