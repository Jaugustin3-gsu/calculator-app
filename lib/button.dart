import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class Button extends StatelessWidget {
  
fuc(){}

final String num;
final Color fillColor;
final Color textColor;
final double textSize;
late final Function callback;



   Button(this.num,this.fillColor,this.textColor,this.textSize, callback, {super.key});

@override
  Widget build(BuildContext context) {
    return Container(
      
                margin: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: TextButton(
                      onPressed: () {callback(num);},
                      
                      style: TextButton.styleFrom(
                        foregroundColor: textColor,
                        backgroundColor: fillColor,
                        shape: RoundedRectangleBorder(
                        
                          borderRadius: BorderRadius.circular(5.0)
                        )
                      ), 
                      child: Text(num,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: textSize,
                                    )
                                  ),
                                  ),
                                 
                              
                    ),
                  ),

    );
  }
}