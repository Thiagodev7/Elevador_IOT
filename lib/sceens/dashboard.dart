
import 'package:bitebunk/sceens/lista_cliente.dart';
import 'package:flutter/material.dart';



class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MenuLateral(),
      body: Builder(
        builder: (context) => _CorpoCentral(context)        ,
      ),
    );
  }


  Drawer MenuLateral() => Drawer(
        child: Column(
          children: [Text('Teste')],
        ),
      );

  Container _CorpoCentral(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _AppBarX(context),
                SizedBox(
                  height: 20,
                ),
                _Titulo(),
                SizedBox(
                  height: 20,
                ),
                _CardIfor(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _Botaoclient(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _Botaoclient(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        top: 20.0,
        right: 8.0,
      ),
      child: Container(
        child: _BotaoCliente(context),
      ),
    );
  }

  Padding _CardIfor() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Container(
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'EM ESTOQUE :',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('PREMIUM P.G4 : 10'),
                      Text('OFFICE 450KG : 10'),
                      Text('OFFICE 600KG : 10'),
                      Text('PREMIUM P.G2 : 10'),
                      Text('LOFT : 10'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _Titulo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'DashBoard',
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ],
    );
  }

  Padding _AppBarX(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      IconButton(
      icon: const Icon(Icons.menu),
      onPressed:(){ Scaffold.of(context).openDrawer();},
    ),
          Image.asset(
            'images/logo_ati.png',
            scale: 7,
          ),
          Container(
            child: SizedBox(
              width: 30.0,
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton _BotaoCliente(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ListaCliente();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.photo_camera,
              color: Colors.white,
              size: 24.0,
            ),
            Text(
              'CheckLists',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
