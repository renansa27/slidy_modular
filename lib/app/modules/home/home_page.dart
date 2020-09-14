import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Home Page"),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Observer(builder: (_) {
              if (homeController.pokemons.error != null) {
                return Center(
                  child: RaisedButton(
                      child: Text('Recarregar'),
                      onPressed: () {
                        homeController.fetchPokemons();
                      }),
                );
              }
              if (homeController.pokemons.value == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              var list = homeController.pokemons.value;
              return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      title: Text(list[index].name),
                    );
                  });
            }),
          ),
        ),
      ),
    );
  }
}
