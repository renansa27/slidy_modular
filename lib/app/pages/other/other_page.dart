import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  final String text;

  const OtherPage({Key key, this.text}) : super(key: key);
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Other Page"),
        elevation: 0,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Digitado: ${widget.text}"),
          ],
        ),
      ),
    );
  }
}
