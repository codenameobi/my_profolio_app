import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Portfolio App'),
          ),
          body: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.account_circle, size: 50),
                      ),
                      Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Obiora Nwude",
                                style: Theme.of(context).textTheme.headline5),
                            Text("Moblie App developer"),
                          ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.home),
                      Text('Enugu, Nigeria'),
                      Icon(Icons.phone_android),
                      Text('+ (234) 806 809 0435')
                    ]),
                SizedBox(
                  height: 16,
                ),
                Center(
                    child: Text('About Me',
                        style: Theme.of(context).textTheme.headline6)),
                SizedBox(
                  height: 8,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "I love using Mobile Apps and I hope one day to be a mobile app developer ")),
                SizedBox(
                  height: 16,
                ),
                Center(
                    child: Text('My Portfolio',
                        style: Theme.of(context).textTheme.headline6)),
                new Expanded(
                  child: Center(
                    child: Container(
                      // height: 200,
                      child: GridView.count(
                        scrollDirection: Axis.vertical,
                        crossAxisCount: 2,
                        children: [
                          Card(
                            color: Colors.teal,
                          ),
                          Card(
                            color: Colors.cyan,
                          ),
                          Card(
                            color: Colors.yellowAccent,
                          ),
                          Card(
                            color: Colors.deepOrange,
                          ),
                          Card(
                            color: Colors.red,
                          ),
                          Card(
                            color: Colors.yellow,
                          ),
                          Card(
                            color: Colors.purpleAccent,
                          ),
                          Card(
                            color: Colors.indigo,
                          ),
                          Card(
                            color: Colors.black,
                          ),
                          Card(
                            color: Colors.pinkAccent,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ])),
    );
  }
}
