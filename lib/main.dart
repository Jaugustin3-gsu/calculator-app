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
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
      
        child: Column(
          
          children: [

            Row(
              children: [
                Container(
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        )
                      ), child: Text('9',
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                          fontSize: 24,
                                        )
                                      ),),
                    ),
                  ),
                )
              ],

            ),
          ],
         
        ),
      ),
      
    );
  }
}
