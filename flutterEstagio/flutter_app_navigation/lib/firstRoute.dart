import 'package:flutter/material.dart';
import 'secondRoute.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Route'),
        ),
        body: GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/secondRoute')
        )

//      body: GestureDetector(
//        onTap: (){
//          Navigator.push(context, MaterialPageRoute(builder: (_) => SecondRoute()));
//        }
//      )

//      body: Center(
//        child: ElevatedButton(
//          child: Text('Open route'),
//          onPressed: () {
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => SecondRoute()),
//            );
//          },
//        ),
//      ),
        );
  }
}
