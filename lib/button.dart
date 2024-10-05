import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class Button extends StatelessWidget {
  

final String num;

const Button(this.num);

@override
  Widget build(BuildContext context) {
    return Container(
      
                margin: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: TextButton(
                      onPressed: () {},
                      
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                        
                          borderRadius: BorderRadius.circular(5.0)
                        )
                      ), 
                      child: Text(num,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 24,
                                    )
                                  ),
                                  ),
                                 
                              
                    ),
                  ),

    );
  }
}