import 'package:flutter/material.dart';
import '/res.dart';
import '/fun.dart';

const double btmH=60;
Widget c=Container();
const inclr=Color(0xFF0A0E21);
const acclr=Color(0xFF111328);
int z=0;

class ExPands extends StatelessWidget {

  ExPands(@required this.colour, this.cld);

  final Color colour;
  final Widget cld;

  @override
  Widget build(BuildContext context) {
    return Expanded(
       child: Container(
         child: cld,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: colour,
         ),
         margin: EdgeInsets.all(15),
       ),
     );
  }
}

class icon extends StatelessWidget {

  icon(this.txt,this.ic,this.onpress);

  final String txt;
  final IconData ic;
  final void Function() onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child:Icon(ic,
              color: Colors.white,
              size: 70,),
            ),
            Expanded(
            child: Text(txt,
            style: TextStyle(
              color: Color(0xFF8D8E98),
              fontSize: 18,
              //fontWeight: FontWeight.w100
            ),))
          ],
        ),
      ),
    );
  }
}


class Inpage extends StatefulWidget {
  const Inpage({ Key? key }) : super(key: key);

  @override
  State<Inpage> createState() => _InpageState();
}

Color mc=Color(0xFF0A0E21);
Color fc=Color(0xFF0A0E21);

// void updt(int g){
//   if(g==1){
//     mc==inclr ? mc=acclr : mc=inclr;
//   }
//   else{
//     if(fc==inclr){
//       fc=acclr;
//       mc=inclr;
//     }
//     else{
//       fc=inclr;
//     }
//   }
// }
int h=180;
int w=40;
int a=18;
class _InpageState extends State<Inpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF0A0E21) ,
        title: Text('BMI Calulator'),
      ),
      body: 
        //floatingActionButton: FloatingActionButton(                   //Theme(data: ThemeData())
        //  onPressed: (){},
        //  child: Icon(Icons.add),),
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Expanded(
               child: Row(
                 children:[ ExPands(
                  z==1? mc=acclr:mc=inclr,
                 icon(
                   'MALE',Icons.male,(){
                     setState(() {
                       z=1;
                     });
                   })),
            ExPands(z==2? fc=acclr:fc=inclr,icon('FEMALE',Icons.female,(){
                     setState(() {
                       z=2;
                     });
                   },))],),
             ),
              ExPands(Color(0xFF1D1E33),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text('HEIGHT',
                    style: TextStyle(
                      color: Color(0xFF8D8E98),
                      fontSize: 18,
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(h.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w800
                          ),),
                          Text("cm",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF8D8E98),
                          ),
                          )
                        ],
                      ),
                    ),
                    SliderTheme(
                      data:SliderThemeData(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                        overlayColor: Color(0x29EB1555),
                        //activeTrackColor: Color(0xFFEB1555),
                        //inactiveTrackColor: Color(0xFF8D8E98),
                      ),
                      child: Slider(value: h.toDouble(), 
                      onChanged: (double val){
                        setState(() {
                          h=val.round();
                        });
                      },
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      min: 120,
                      max: 220,),
                    )
                  ],
                )
              ),
              Expanded(
               child: Row(
                 children:[ ExPands(Color(0xFF1D1E33),Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("WEIGHT",
                     style: TextStyle(
                      color: Color(0xFF8D8E98),
                      fontSize: 18,)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(w.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Rbtns(
                            (){
                              setState(() {
                                w=w-1;
                              });
                            }
                          ),
                            SizedBox(
                            width: 20,
                            ),
                            Rbtn(
                              (){
                                setState(() {
                                  w=w+1;
                                });
                              }
                            ),
                        ],
                      ),
                   ],
                 )),

                 ExPands(Color(0xFF1D1E33),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("AGE",
                     style: TextStyle(
                      color: Color(0xFF8D8E98),
                      fontSize: 18,)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(a.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Rbtns(
                            (){
                              setState(() {
                                a=a-1;
                              });
                            }
                          ),
                            SizedBox(
                            width: 20,
                            ),
                            Rbtn(
                              (){
                                setState(() {
                                  a=a+1;
                                });
                              }
                            ),
                        ],
                      ),
                   ],
                 )
                 )],),
             ),
             GestureDetector(
               onTap: (){

                 CalBmi val=CalBmi(h.toDouble(),w.toDouble());

                 Navigator.push(context, 
                 MaterialPageRoute(builder: (context) => Res(
                   val.cal(),val.getr(),val.geti()
                 ),));
               },
               child: Container(
                 padding: EdgeInsets.only(bottom: 20),
                 child: Center(
                   child: Text('Calculate',
                   style: TextStyle(
                     fontSize: 20
                   ),),
                 ),
                 color: Color(0xFFEB1555),
                 margin: EdgeInsets.only(top:10),
                 width: double.infinity,
                 height: btmH,
               ),
             )
          ],
        )
    );
  }
}

class Rbtn extends StatelessWidget {

  Rbtn(this.opd);

  final void Function() opd;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: opd,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      child: Icon(Icons.add),
      elevation: 10,
      constraints: BoxConstraints(
        minHeight: 50,
        minWidth: 50
      ),
      );
  }
}
class Rbtns extends StatelessWidget {
  Rbtns(this.op);
  final void Function() op;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: op ,
      elevation: 10,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      child: Icon(Icons.remove),
      constraints: BoxConstraints(
        minHeight: 50,
        minWidth: 50
      ),
      );
  }
}
