import 'package:flutter/material.dart';

class GaleriaCliente extends StatelessWidget {
  const GaleriaCliente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _Theme(),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Carregamento'),

            backgroundColor: Colors.blueGrey,
          ),
          body: CustomScrollView(
            primary: false,
            slivers: <Widget>[


              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Card(
                            child: Text('PA9-0001 - BANDEIJA PISO'),
                          ),
                          Image.asset('images/bandeija_piso.jpg'),
                        ],
                      ),
                      color: Colors.blueGrey[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Card(
                            child: Text('PA9-0002 - BANDEIJA TETO'),
                          ),
                          Image.asset('images/bandeija_teto.png'),
                        ],
                      ),
                      color: Colors.blueGrey[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('PA9-0003'),
                      color: Colors.blueGrey[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('PA9-0004'),
                      color: Colors.blueGrey[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('PA9-0005'),
                      color: Colors.blueGrey[500],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('PA9-0006'),
                      color: Colors.blueGrey[600],
                    ),
                  ],
                ),
              ),
            ],
          )),
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
