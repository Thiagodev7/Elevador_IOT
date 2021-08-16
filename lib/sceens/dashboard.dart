import 'package:bitebunk/sceens/lista_cliente.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MenuLateral(),
      body: _CorpoCentral(context),
    );
  }

  Drawer MenuLateral() => Drawer(
        child: Column(
          children: [Text('Teste')],
        ),
      );

  Padding _CorpoCentral(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.menu,
                    size: 32,
                  ),
                  onTap: () {},
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
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DashBoard',
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
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
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 16.0,
              right: 8.0,
            ),
            child: Container(
              child: _BotaoCliente(context),
            ),
          )
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
              Icons.people,
              color: Colors.white,
              size: 24.0,
            ),
            Text(
              'Clientes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
