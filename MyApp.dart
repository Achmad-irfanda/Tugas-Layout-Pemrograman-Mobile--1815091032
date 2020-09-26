  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(231, 255, 248, 1),
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Color.fromRGBO(0, 0, 255, 1),
              //RGBO didapatkan dari nilai RGB biasa, dan O = 1 adalah nilai opacity,
              // maka nilai warnanya tidak akan berubah
              title: Text('Profil'),
            ),
            body:
            new SingleChildScrollView(
                child :new Column(
                  children :<Widget>[
                    new foto(),
                    new nama(),
                    new web(),
                    new singarajaandpanji(),
                    new allgenreandundiksha(),
              ],
            ),
          )
        ),
      );
    }
  }

  //foto dosen
  class foto extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(
                left: 31,
                right: 31,
                top: 30,
            ),
              child:new Container(
                  child: Column(
                    children: <Widget>[
                    new CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.blueAccent,
                      child: CircleAvatar(
                        radius: 97,
                        backgroundImage: AssetImage('assets/pakrey.jpg'),
                    ),
                  ),
                ]
              ),
            ),
          ),
        ],
      );
    }
  }
  //end foto

  //nama dosen
  class nama extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new Container(
          margin: new EdgeInsets.only(
            left:10,
            right: 10,
            top:25),
          child : Text(' I Ketut Resika Arthana S.T., M.Kom',
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.blueAccent,
          ),
        ),
      );
    }
  }
  //end nama dosen

  //website
  class web extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
          margin: new EdgeInsets.only(
            left:30,
            right: 30,
            top:1),
          child : Text(' http://www/rey1024.com',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.blueAccent,
          ),
        ),
      );
    }
  }

  //sgrpan
  class singarajaandpanji extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Row(
        children: <Widget>[

          //singaraja
          new Expanded(child: new Row (
            children: <Widget>[
              new Expanded(
                child: new Container (
                  margin: EdgeInsets.only(left: 36, right: 21, top:10, bottom: 8),
                  child: new Column(
                    children: <Widget> [
                      IconButton(
                        padding: EdgeInsets.only(left: 5, right: 5, top:8, bottom: 8),
                        icon: new Icon(Icons.my_location, color: Colors.green,),
                        iconSize: 80, onPressed: (){},
                      ),
                      RaisedButton(
                        padding: EdgeInsets.only(left: 25, right: 25, top: 12, bottom: 12),
                        onPressed: () {},
                        color: Colors.blueAccent,
                        child: const Text('Singaraja', style: TextStyle(
                            fontSize: 20, color: Colors.amber,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular (23.0), topRight: Radius.circular (23.0) ),
                  ) ,
                ),
              ),
            ],
          ),
        ),

          //panji
          new Expanded(
            child: new Container (
              margin: EdgeInsets.only(left: 28,  right: 30, top:10, bottom: 10),
              child: new Column(
                children: <Widget> [
                  IconButton(
                    padding: EdgeInsets.only(left: 5, right: 5, top:8, bottom: 8),
                    icon: new Icon(Icons.store, color: Colors.amber),
                    iconSize: 80, onPressed: (){},
                  ),
                  RaisedButton(
                    padding: EdgeInsets.only(left: 44, right: 44, top: 12, bottom: 12),
                    onPressed: () {},
                    color: Colors.blueAccent,
                    child: const Text('Panji', style: TextStyle(fontSize: 20, color: Colors.amber, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular (23.0), topRight: Radius.circular (23.0) ),
              ) ,
            ),
          ),
        ],
      );
    }
  }
  //endsgrpan

  //genund
  class allgenreandundiksha extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Row(
        children: <Widget>[
                //all genre
          new Expanded(
            child: new Container (
              margin: EdgeInsets.only(left: 36, right: 21, top:12, bottom: 12),
              child: new Column(
                children: <Widget>[
                  IconButton(
                      padding: EdgeInsets.only(left: 20, right: 20, top:8, bottom: 8),
                      icon: new Icon(Icons.music_note, color: Colors.deepPurple,),
                      iconSize: 80, onPressed: (){},
                  ),
                  RaisedButton(
                      padding: EdgeInsets.only(left: 26, right: 26, top: 12, bottom: 12),
                      onPressed: () {},
                      color: Colors.blueAccent,
                      child: const Text('All Genre', style: TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold)
                      ),
                    ),
                  ],
                ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.blue,
                width: 2,
                ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular (23.0),
                      topRight: Radius.circular (23.0),
                ),
              ) ,
            ),
          ),

                //Undiksha

          new Expanded(
            child: new Container (
              margin: EdgeInsets.only(left: 28, top:10, right: 30, bottom: 10),
                child: new Column(
                  children: <Widget> [
                    IconButton(
                        padding: EdgeInsets.only(left: 20, right: 20, top:8, bottom: 8),
                        icon: new Icon(Icons.business, color: Colors.blueAccent,),
                        iconSize: 80, onPressed: (){},
                    ),
                    RaisedButton(
                        padding: EdgeInsets.only(left: 25, right: 25, top: 12, bottom: 12),
                        onPressed: () {},
                        color: Colors.blueAccent,
                      child: const Text('Undiksha', style: TextStyle(
                          fontSize: 20, color: Colors.amber,
                          fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                   width: 2,
              ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular (23.0), topRight: Radius.circular (23.0) ),
              ) ,
            ),
          ),
        ],
      );
    }
  }
  //end genund

