
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

        body: _ListaClieteBuild(),
        floatingActionButton: BotaoNewClient(context),
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



  ListView _ListaClieteBuild() {
    return ListView(
      children: <Widget>[
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),
        _Cliente('Cliente 1', 'Office 450 KG.'),
        _Cliente('Cliente 2', 'Premium P.G4'),

      ],
    );
  }
}

class _Cliente extends StatelessWidget {
  final nome, modelo;

  _Cliente(this.nome, this.modelo);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return GaleriaCliente();
        },),);
      },
      child: Card(
        child: ListTile(
          leading: Image.asset('images/ATI.jpg'),
          title: Text(nome),
          subtitle: Text(modelo),
          trailing: Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
