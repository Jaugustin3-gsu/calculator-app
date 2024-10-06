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


               Container(
                alignment: const Alignment(1.0,1.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text('9231',
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize:24,
                      color: Colors.grey,
                    )
                  ))
                  
                ), 
              ),

              Container(
                alignment: const Alignment(1.0,1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text('9231',
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize:48,
                      color: Colors.white,
                    )
                  ))
                  
                ), 
              ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('7',Colors.orange,Colors.black,40),
                Button('8',Colors.orange,Colors.black,40),
                Button('9',Colors.orange,Colors.black,40),
                Button('/',Colors.yellow,Colors.black,40)
              ],
            ),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                
               Button('4',Colors.orange,Colors.black,40),
                Button('5',Colors.orange,Colors.black,40),
                Button('6',Colors.orange,Colors.black,40),
                Button('*',Colors.yellow,Colors.black,40)
              ],
            ),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('1',Colors.orange,Colors.black,40),
                Button('2',Colors.orange,Colors.black,40),
                Button('3',Colors.orange,Colors.black,40),
                Button('-',Colors.yellow,Colors.black,40)
              ],
            ),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('AC',Color.fromARGB(255, 255, 217, 0),Colors.black,40),
                Button('0',Colors.orange,Colors.black,40),
                Button('=',Color.fromARGB(255, 255, 217, 0),Colors.black,40),
                Button('+',Colors.yellow,Colors.black,40)
              ],
            ),
            
                    
          ],
          

         
        ),
      ),
      
    );
  }
}
