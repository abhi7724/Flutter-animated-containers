import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});



  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var _height =100.0;
  // var _width = 200.0;
  // bool reverse = true;
  //
  // Color bgColor = Colors.purple;
  var myOpacity = 1.0;
  bool flag = true;



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),

      ),
      body:
    Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        AnimatedOpacity(opacity: myOpacity, duration: Duration(seconds: 2) , child: Container(
          width: 200,
          height: 100,
          color: Colors.blue,
        ),),

         ElevatedButton(onPressed:(){
          setState(() {
          if(flag){
            myOpacity = 0.0;
            flag = false;
          }else{
            myOpacity = 1.0;
            flag = true;
          }



          });



        }, child: Text('Animate'))
      ],
      ),
    )
    );
    //This trailing comma makes auto-formatting nicer for build methods.

  }
}
