import 'package:flutter/material.dart';
import 'package:tugas1_mobile/informasi.dart';



class login extends StatefulWidget {
  static String tag = 'login';
  @override
  State createState() => new loginState();
}

class loginState extends State<login>
    with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    //Scaffold is structure to define app bar and stuff
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/background.png"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            //mainAxisAlignment means vertical
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Form(
                  child: Theme(
                    data: new ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle:
                            new TextStyle(color: Colors.teal, fontSize: 20.0))),
                    child: new Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration:
                            new InputDecoration(labelText: "Enter Email"),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration:
                            new InputDecoration(labelText: "Enter Password"),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                          ),
                          new MaterialButton(
                            minWidth: 200.0,
                            height: 42.0,
                            onPressed: () {
                              Navigator.of(context).pushNamed(informasi.tag);
                            },
                            color: Colors.lightBlueAccent,
                            child: Text('Log In', style: TextStyle(color: Colors.white)),
                          ),

                        ],
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
