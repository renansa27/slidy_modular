import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/pages/home/home_controller.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  homeController.text = value;
                },
                decoration: InputDecoration(labelText: "Test Input"),
              ),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton(
                child: Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.pushNamed(context, '/other/${homeController.text}');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
