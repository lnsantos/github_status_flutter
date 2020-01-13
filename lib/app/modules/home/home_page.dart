import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../app_controller.dart';
import '../../app_module.dart';

class HomePage extends StatelessWidget {
  final String title;
  HomePage({Key key, this.title = "GITHUB STATUS"}) : super(key: key);

  final AppController mainModule = AppModule.to.get();

  TextStyle _titleStyle() {
    return TextStyle(color: Colors.white, fontSize: 30.0);
  }

  TextStyle _simpleTextStyle() {
    return TextStyle(color: Colors.white, fontSize: 20.0);
  }

  TextStyle _textFieldStyle() {
    return TextStyle(
        color: Colors.black, fontSize: 20.0, backgroundColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(title, style: _titleStyle())),
                  padding: EdgeInsets.all(20.0)),
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: _simpleTextStyle(),
                decoration: InputDecoration(
                  labelText: "Name user of Github.com",
                  labelStyle: _textFieldStyle(),
                ),
              ),
              RaisedButton(
                child: Text("SEARCH", style: _textFieldStyle()),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
