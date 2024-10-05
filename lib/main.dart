import 'package:calculator_app/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CalulatorApp());
}

class CalulatorApp extends StatelessWidget {
  const CalulatorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calulator App',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calulator'),
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
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
       
        title: Text(widget.title),
      ),

        
      backgroundColor: const Color.fromARGB(255, 3, 48, 252),
      body: Center(
        
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('1'),
                Button('2'),
                Button('3'),
                Button('4')
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('1'),
                Button('2'),
                Button('3'),
                Button('4')
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('1'),
                Button('2'),
                Button('3'),
                Button('4')
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('1'),
                Button('2'),
                Button('3'),
                Button('4')
              ],
            ),
            
                    
          ],
          

         
        ),
      ),
      
    );
  }
}
