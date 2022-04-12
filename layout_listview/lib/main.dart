import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 1),
                  child: Text(
                    'Hamsilos Koyu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 1, 5, 5),
                  child: Text(
                    'Sinop-Türkiye',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.green[800],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text('100'),
          Icon(
            Icons.star,
            color: Colors.deepOrange[700],
          ),
        ],
      ),
    );
    Widget buttonSection = Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton.icon(
            onPressed: () => {},
            icon: Icon(Icons.ac_unit),
            label: Text('Rota'),
          ),
          RaisedButton.icon(
            onPressed: () => {},
            icon: Icon(Icons.contacts),
            label: Text('iletisim'),
          ),
          RaisedButton.icon(
            onPressed: () => {},
            icon: Icon(Icons.share),
            label: Text('paylas'),
          ),
        ],
      ),
    );
    Widget aboutSection = Container(
      padding: EdgeInsets.all(8),
      child: Text(
        'Hamsilos, Sinop il sınırları içinde bulunan bir koy',
        style: TextStyle(fontSize: 15),
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sinop Gezi'),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
        ),
        body: ListView(
          children: <Widget>[
            Image.asset('assets/images/hamsiloskoyu.jpg'),
            titleSection,
            buttonSection,
            aboutSection,
          ],
        ),
      ),
    );
  }
}
