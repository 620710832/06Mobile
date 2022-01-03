import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess The Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.brown),
              boxShadow: [
                BoxShadow(
                    color: Colors.brown.withOpacity(0.5),
                    offset: const Offset(2.0, 5.0),
                    blurRadius: 5.0
                )
              ]),
          //alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("asset/images/guess_logo.png",width: 150.0),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.00,
                        vertical: 100.00
                      ),
                      child: Text('Guess\nThe Number.',style: TextStyle(fontSize: 40.00,color: Color(
                          0xD03E3A3A)),),
                    ),
                  ],
                ),

                const SizedBox(child: TextField(),height: 100.0,width: 700.00,),
                ElevatedButton(onPressed: (){
                  //โค้ดที่จะทำงานเมื่อกด
                }, child: const Text('Guess'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
