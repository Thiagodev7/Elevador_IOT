import 'package:bitebunk/models/clientes.dart';
import 'package:flutter/material.dart';

class FormularioCliente extends StatefulWidget {
  @override
  _FormularioClienteState createState() => _FormularioClienteState();
}

class _FormularioClienteState extends State<FormularioCliente> {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorPD = TextEditingController();
  final TextEditingController _controladorModelo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _Theme(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Formulario do Cliente"),
        ),
        body: Column(
          children: <Widget>[
            TextFormField(
              controller: _controladorNome,
              cursorColor: Theme.of(context).primaryColor,
              maxLength: 30,
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'Nome do Cliente',
                labelStyle: TextStyle(),
                helperText: 'Cliente ou Empresa',
              ),
            ),
            TextFormField(
              controller: _controladorPD,
              cursorColor: Theme.of(context).primaryColor,
              maxLength: 7,
              decoration: InputDecoration(
                icon: Icon(Icons.assignment),
                labelText: 'Pedido de Venda',
                labelStyle: TextStyle(),
                helperText: 'PD:XXXX',
              ),
            ),
            TextField(
              controller: _controladorModelo,
              cursorColor: Theme.of(context).primaryColor,
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.elevator),
                labelText: 'Modelo do Elevador',
                labelStyle: TextStyle(),
                helperText: 'Codigo e Modelo',
              ),
            ),
          ],
        ),
        floatingActionButton: BotaoCadastro(context),
      ),
    );
  }

  ElevatedButton BotaoCadastro(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final String nome = _controladorNome.text ;
        final String pd = _controladorPD.text;
        final String modelo = _controladorModelo.text;
        final Clientes newClientes = Clientes(nome, pd, modelo);
        Navigator.pop(context, newClientes);
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
      ),
      child: Text('Salvar Cliente'),
    );
  }
}

ThemeData _Theme() {
  return ThemeData(
    primaryColor: Colors.blueGrey,
    accentColor: Colors.blueAccent[700],
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blueAccent[700],
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
