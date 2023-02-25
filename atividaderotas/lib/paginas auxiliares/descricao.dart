import 'package:atividaderotas/util/componentes.dart';
import 'package:flutter/material.dart';

class Vestido extends StatefulWidget {
  @override
  _VestidoState createState() => _VestidoState();
}

class _VestidoState extends State<Vestido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBarLiso("Produtos"),
      body: Container(
        padding: EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                color: Colors.yellow[100],
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: 500,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/imgs/vestidourso.jpg',
                          width: 170.0, height: 170.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Componentes().criaTexto(
                              "\nVestido Urso\nTamanho: P\nValor R\$: 40,00\nRef:45\nAltura: 38cm\nLargura: 20cm\nIdade:2-3 meses\nPeso:4-6kg",
                              14),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                  textColor: Colors.blue,
                  title: Text("Comprar", textAlign: TextAlign.center),
                  trailing: Icon(Icons.shopping_cart_sharp, color: Colors.blue),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
class Jardineira extends StatefulWidget {
  @override
  _JardineiraState createState() => _JardineiraState();
}

class _JardineiraState extends State<Jardineira> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBarLiso("Produtos"),
      body: Container(
        padding: EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                color: Colors.yellow[100],
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: 500,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/imgs/jardineirapanda.jpg',
                          width: 170.0, height: 170.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Componentes().criaTexto(
                              "\nJardineira Panda\nTamanho: P\nValor R\$: 42,00\nRef:40\nAltura: 38cm\nLargura: 20cm\nIdade:2-3 meses\nPeso:4-6kg",
                              14),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                  textColor: Colors.blue,
                  title: Text("Comprar", textAlign: TextAlign.center),
                  trailing: Icon(Icons.shopping_cart_sharp, color: Colors.blue),
                  onTap: () {
                    Navigator.of(context).pushNamed('');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
