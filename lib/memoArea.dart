import 'package:febproject/voiceTexter.dart';
import 'package:flutter/material.dart';



class memoArea extends StatefulWidget {
  @override
  _memoAreaState createState() => _memoAreaState();
}



class _memoAreaState extends State<memoArea> {
  @override
  Widget build(BuildContext context) {
    var listItem = ["メルカリ","Yahoo","Amazon"];
    return Scaffold(
      appBar: AppBar(
        title:  const Text('home'),
      ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return
              Container(
              padding: EdgeInsets.fromLTRB(10,10,10,0),
              height: 220,
              width: double.maxFinite,
              child: Card(
                elevation: 5,
              ),
            );
          }, itemCount: listItem.length,),

         floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => voiceTexter()
            ));
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.settings_voice),
        )

         );

  }
}
