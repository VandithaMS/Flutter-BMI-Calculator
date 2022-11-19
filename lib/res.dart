import 'package:flutter/material.dart';
import '/inpage.dart';

class Res extends StatelessWidget {
  Res(this.wgt,this.txt,this.r);

  final String txt;
  final String wgt;
  final String r;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF0A0E21) ,
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            child: Text("Your Result",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),
          ),
          //SizedBox(height: 10),
            Expanded(
              flex: 5,
              child: ExPands(Color(0xFF1D1E33), 
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(txt.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green
                  ),),
                  Text(wgt,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                  Text(r,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70
                  ),),
                  
                ],
              )
              )
            ),
            GestureDetector(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Container(
                 padding: EdgeInsets.only(bottom: 20),
                 child: Center(
                   child: Text('Re-Calculate',
                   style: TextStyle(
                     fontSize: 20
                   ),),
                 ),
                 color: Color(0xFFEB1555),
                 //margin: EdgeInsets.only(top:10),
                 width: double.infinity,
                 height: btmH,
               ),
             )
        ],
      ),
    );
  }
}
