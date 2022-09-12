import 'package:flutter/material.dart';

import 'package:tugas1_mobile/kalkulator.dart';
import 'package:tugas1_mobile/login.dart';

class informasi extends StatefulWidget {
  static String tag = 'informasi';

  State createState() => new informasiState();
}

class informasiState extends State<informasi>
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
              new Image(
                image: Image.asset('assets/logo1.png'),
              ),
              Text(
                  "Anggota Kelompok",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold
                  )
              ),
              Padding(padding: EdgeInsets.all(20.0),),
              Text(
                "Augys Dellea Rischa Aisyah 124200037 \n Dyah Ayu Zubaedah 124200040 \n Umar Raihan Baluwel 124200040",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w300
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 30.0),
              ),
              new MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {
                  Navigator.of(context).pushNamed(login.tag);
                },
                color: Colors.lightBlueAccent,
                child: Text('Kembali', style: TextStyle(color: Colors.white)),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 30.0),
              ),
              new MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {
                  Navigator.of(context).pushNamed(kalkulator.tag);
                },
                color: Colors.lightBlueAccent,
                child: Text('Kembali', style: TextStyle(color: Colors.white)),
              ),
            ],

          ),
        ],
      ),
    );
  }
}