import 'package:flutter/material.dart';
import 'package:github_status/app/_resources/components/button.dart';
import 'package:github_status/app/_resources/extensions/color.dart';
import 'package:line_icons/line_icons.dart';

import '../../app_controller.dart';
import '../../app_module.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final AppController mainModule = AppModule.to.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/images/git_icon.png",
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                margin: EdgeInsets.all(16),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Username",
                            prefixIcon: Icon(LineIcons.user),
                            border: OutlineInputBorder()),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(LineIcons.user_secret),
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: CustomButton(
                              backgroundColor: Color.fromRGBO(43, 49, 55, 1),
                              child: Text(
                                "Keep without account",
                                style: TextStyle(
                                    color: Color.fromRGBO(250, 251, 252, 1),
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Expanded(
                            child: CustomButton(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                              backgroundColor: Color.fromRGBO(45, 186, 78, 1),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
