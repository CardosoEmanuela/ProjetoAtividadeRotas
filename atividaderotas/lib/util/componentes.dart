import 'package:flutter/material.dart';

class Componentes {
  criaAppBarLiso(texto) {
    return AppBar(
     title: criaTexto(texto, 20),
      centerTitle: true,
      titleTextStyle: const TextStyle(color: Colors.lightBlue, fontSize: 20.0),
      backgroundColor: Color.fromARGB(255, 247, 244, 115),
    );
  }

   criaAppBar(texto, acao) {
    return AppBar(
      title: criaTexto(texto, 20),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 247, 244, 115),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: acao,
        )
      ],
    );
  }


  criaTexto(conteudo, tamanho) {
    return Text(
      conteudo,
      style: TextStyle(
        color: Colors.blue,
        fontSize: tamanho,
      ),
    );
  }
iconeGrande() {
  return const Icon(
    color:Colors.blue,
    Icons.login_rounded,
    size: 80.0,
  );
}
  iconeImage(){
return const Icon(
    color:Colors.blue,
    Icons.camera_alt_outlined,
    size: 80.0,);
  
}
    imagemLogin() {
    return Container(
              height: 250.0,
              width: 250.0,
              decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/imgs/Logo_GiraSol.png'),
      ),
              ),
    );
  }
  
    imagemInicial() {
    return Container(
              // height: 250.0,
              // width: 250.0,
              decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/imgs/inicioproduto.png'),
      ),
              ),
    );
  }

  criaInputTexto(tipoTeclado, textoEtiqueta, controlador, senha, msgValidacao) {
    return TextFormField(
      keyboardType: tipoTeclado,
      obscureText: senha,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        labelText: textoEtiqueta,
        labelStyle: const TextStyle(color: Colors.lightBlue, fontSize: 16.0),
      ),
      textAlign: TextAlign.left,
      style: const TextStyle(color: Colors.lightBlue, fontSize: 20.0,),
      controller: controlador,
      validator: (value) {
        if (value!.isEmpty) {
          return msgValidacao;
        }
      },
    );
  }

  criaTextoLogin(conteudo, tam, cor) {
    return Text(
      conteudo,
      style: TextStyle(fontSize: 20, color: Colors.blue),
    );
  }

  criaTextFieldLogin(titulo, senha, tipoTeclado, controlador) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controlador,
        keyboardType: tipoTeclado,
        obscureText: senha,
        decoration: InputDecoration(
          labelText: titulo,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  criaBotaoLogin(rotulo, funcao, altura, largura) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
         style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 247, 244, 115),
              ),
        onPressed: funcao,
        child: criaTextoLogin(rotulo, 20, Colors.blue),
      ),
    );
  }
  criaBotaoProdutos(rotulo, funcao, altura, largura) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
         style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 247, 244, 115),
              ),
        onPressed: funcao,
        child: criaTextoLogin(rotulo, 20, Colors.blue),
      ),
    );
  }
    criaBotaoImagem(rotulo,funcao) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
         style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 247, 244, 115),
              ),
        onPressed: funcao,
        child: criaTextoLogin(rotulo, 20, Colors.blue),
      ),
    );
  }
    criaBotaoCompra(rotulo,funcao) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
        onPressed: funcao,
        child: criaTextoLogin(rotulo, 20, Colors.blue),
      ),
    );
  }
  criaTextField(titulo, senha, tipoTeclado, controlador) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controlador,
        keyboardType: tipoTeclado,
        obscureText: senha,
        decoration: InputDecoration(
          labelText: titulo,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
   criaBotao(controladorFormulario, funcao, titulo) {
    return SizedBox(
      height: 30,
      child: 
        Expanded(
           flex: 6,
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 247, 244, 115),
  
              ),
              onPressed: () {
                if (controladorFormulario.currentState!.validate()) {
                  funcao;
                  // funcao();
                }
              },
              child: Text(
                titulo,
                style: const TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
            ),
          ),
        )
    );
  }
}
