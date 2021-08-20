import 'package:bitebunk/sceens/formulario_cliente.dart';
import 'package:bitebunk/sceens/galeria_cliente.dart';
import 'package:flutter/material.dart';

class ListaCliente extends StatefulWidget {
  @override
  _ListaClienteState createState() => _ListaClienteState();
}

class _ListaClienteState extends State<ListaCliente> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _Theme(),
      home: Scaffold(
        body: _CorpoCentral(context),
        floatingActionButton: BotaoNewClient(context),
      ),
    );
  }

  ListView _CorpoCentral(BuildContext context) {
    return ListView(
      children: [
        _AppBarY(context),
        SizedBox(
          height: 20,
        ),
        _Cliente(
          'Cliente 1',
          'Office 450 KG.',
        ),
      ],
    );
  }

  Padding _AppBarY(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
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

  FloatingActionButton BotaoNewClient(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: (Theme.of(context).primaryColor),
      onPressed: () {
        Navigator.of(context)
            .push(
              MaterialPageRoute(
                builder: (context) => FormularioCliente(),
              ),
            )
            .then((newClientes) => debugPrint(newClientes.toString()));
      },
      child: Icon(Icons.add),
    );
  }

  ThemeData _Theme() {
    return ThemeData(
      primaryColor: Colors.blueGrey,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blueAccent[700],
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}

class _Cliente extends StatelessWidget {
  final nome, modelo;

  _Cliente(this.nome, this.modelo);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
          child: ListTile(
        leading: Image.asset('images/ATI.jpg'),
        title: Text(nome),
        subtitle: Text(modelo),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
        ),
      )),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GaleriaCliente(),
          ),
        );
      },
    );
  }
}
