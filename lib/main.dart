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

    late int firstNum;
   late int  secondNum;
  String history = '';
   String textToDisplay = '';
   late String res;
   late String operation; 
String displayText = '';


 void OnClick(String val){
    
  print(val);

  if (val == 'AC'){
      setState(() {
        firstNum = 0;
        secondNum = 0;
        res;
        history = '';
        textToDisplay = '';

    });
  } else if(val == '+' || val == '-' || val == '*' || val == '/'){
    
   firstNum = int.tryParse(textToDisplay)??0;
    print('textToDisplay = ' +  textToDisplay);
    res = '';
    operation = val;

    setState(() {
      textToDisplay = '';
    });
   
  }else if (val == '='){

    secondNum = int.parse(textToDisplay);
   
    if(operation == '+') {
      res = (firstNum + secondNum).toString();
      
    //  history = firstNum.toString() + operation.toString() + secondNum.toString();
    } if(operation == '-') {
      res = (firstNum - secondNum).toString();
    //  history = firstNum.toString() + operation.toString() + secondNum.toString();
    } if(operation == '*') {
      res = (firstNum * secondNum).toString();
    //  history = firstNum.toString() + operation.toString() + secondNum.toString();
    } if(operation == '/') {
      res = secondNum != 0 ? (firstNum / secondNum).toString() : 'Error';
    //  history = firstNum.toString() + operation.toString() + secondNum.toString();
    
    }

    setState(() {
   textToDisplay = res;
   history = '$firstNum $operation $secondNum';
  
    });
   }else {
    // Handle number and append to display
    setState(() {
      textToDisplay += val;
    });
   }
    
}


 

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
                  child: Text(history,
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
                  child: Text(textToDisplay,
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize:48,
                      color: Colors.white,
                    )
                  ))
                  
                ), 
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('7',Colors.orange,Colors.black,40,OnClick),
                Button('8',Colors.orange,Colors.black,40,OnClick),
                Button('9',Colors.orange,Colors.black,40,OnClick),
                Button('/',Colors.yellow,Colors.black,40,OnClick)
              ],
            ),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                
               Button('4',Colors.orange,Colors.black,40,OnClick),
                Button('5',Colors.orange,Colors.black,40,OnClick),
                Button('6',Colors.orange,Colors.black,40,OnClick),
                Button('*',Colors.yellow,Colors.black,40,OnClick)
              ],
            ),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('1',Colors.orange,Colors.black,40,OnClick),
                Button('2',Colors.orange,Colors.black,40,OnClick),
                Button('3',Colors.orange,Colors.black,40,OnClick),
                Button('-',Colors.yellow,Colors.black,40,OnClick)
              ],
            ),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Button('AC',Color.fromARGB(255, 255, 217, 0),Colors.black,40,OnClick),
                Button('0',Colors.orange,Colors.black,40,OnClick),
                Button('=',Color.fromARGB(255, 255, 217, 0),Colors.black,40,OnClick),
                Button('+',Colors.yellow,Colors.black,40,OnClick)
              ],
            ),
            
                    
          ],
          

         
        ),
      ),
      
    );
  }
}
