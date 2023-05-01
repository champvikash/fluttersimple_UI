import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: DashBord(),
    );
  }
}

class DashBord extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20.0),),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        color: Colors.green.shade400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('text' ,"Text" ,"card is second text"),
                    getExpanded('text' , "Address","Address is second text"),

          ],
                )
            ),
            Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('text' ,"Character" ,"Character is second text"),
                    getExpanded('text' , "Bank Card","Bank Card is second text"),

                  ],
                )
            ) ,

            Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('text' ,"Password" ,"passwoer is second text"),
                    getExpanded('text' , "Logistic Card","Logistic Card is second text"),

                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}


Expanded getExpanded(String image , String mainText , String secondText){
  return Expanded(
      child: Column(
        children: <Widget>[
          Image.asset("images/$Image.png",height: 80),
          SizedBox(height: 5.0),
          Text(mainText, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20.0),),
          SizedBox(height: 5.0),
          Text(secondText)
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(5.0 as Radius),
          boxShadow: [
            BoxShadow(),
          ]
      )
  );
}