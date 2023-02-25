import 'package:atividaderotas/util/componentes.dart';
import 'package:flutter/material.dart';

class Produtos extends StatefulWidget {
  @override
  _ProdutosState createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBarLiso("Produtos"),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  color: Colors.yellow[100],
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 450,
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/imgs/vestidourso.jpg',
                          height: 250,
                          width: 250,
                          alignment: Alignment.center,
                        ),
                        Text(
                          "\nVestido Urso\nTamanho: P\n Valor R\$: 40,00 ",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                        ListTile(
                            textColor: Colors.blue,
                            title:
                                Text("Descrição", textAlign: TextAlign.center),
                            trailing:
                                Icon(Icons.loyalty_rounded, color: Colors.blue),
                            onTap: () {
                              Navigator.of(context).pushNamed('/Vestido');
                            }),
                        ListTile(
                          textColor: Colors.blue,
                          title: Text("Comprar", textAlign: TextAlign.center),
                          trailing: Icon(Icons.shopping_cart_sharp,
                              color: Colors.blue),
                          onTap: () {
                            Navigator.of(context).pushNamed('/CadastroCliente');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.yellow[100],
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 450,
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/imgs/jardineirapanda.jpg',
                          height: 250,
                          width: 250,
                          alignment: Alignment.center,
                        ),
                        Text(
                          "\nJardineira Panda\nTamanho: P\n Valor R\$: 42,00",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                        ListTile(
                            textColor: Colors.blue,
                            title:
                                Text("Descrição", textAlign: TextAlign.center),
                            trailing:
                                Icon(Icons.loyalty_rounded, color: Colors.blue),
                            onTap: () {
                              Navigator.of(context).pushNamed('/Jardineira');
                            }),
                        ListTile(
                          textColor: Colors.blue,
                          title: Text("Comprar", textAlign: TextAlign.center),
                          trailing: Icon(Icons.shopping_cart_sharp,
                              color: Colors.blue),
                          onTap: () {
                            Navigator.of(context).pushNamed('/CadastroCliente');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
