
import 'package:bitebunk/sceens/lista_cliente.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _DashBoradAppBar(),
      body: _CorpoCentral(context),
    );
  }

  AppBar _DashBoradAppBar() {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text('Dashborad'),
    );
  }

  Column _CorpoCentral(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/logo_ati.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _BotaoCliente(context),
        )
      ],
    );
  }



  ElevatedButton _BotaoCliente(BuildContext context) {
    return ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListaCliente();
              },),);
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
