import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../app_controller.dart';
import '../../app_module.dart';

class HomePage extends StatelessWidget {
  final String title;
  HomePage({Key key, this.title = "Home"}) : super(key: key);

  final AppController mainModule = AppModule.to.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: RaisedButton(
        onPressed: mainModule.increment,
        child: Observer(
          builder: (_)=> Text("${mainModule.value}")
        )     
      ),
    );
  }
}
