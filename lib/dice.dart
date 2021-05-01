import 'package:flutter/material.dart';
import 'dart:math';




class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}


class _DiceState extends State<Dice> {
  int radomNumber = 0;
 //void randm(){
  //var rng = new Random();
 // for (var i = 0; i < 3; i++) {
     // print(rng.nextInt(100));
 //   radomNumber = rng.nextInt(6);
    //return radomNumber;
//}
//}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        
    backgroundColor: Colors.white10,
    elevation: 20,
    
        title: Text("GFG | DICE",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
        
        leading: Icon(Icons.near_me_outlined),
        centerTitle: true,
  
        //SizedBox(width: 10.0,), 

      ),
      backgroundColor: Colors.tealAccent,
  body: Center(
    child: InkWell(
        onTap: () {
          setState(() {
          //  randm();
//print(radomNumber);
//
  //var rng = new Random();
    radomNumber = Random().nextInt(6)+1;

//image: NetworkImage(Img.imgPhoto[radomNumber]);
          });
//randm();
print(radomNumber);
        },
          child: Container(
            
width: 180,
          height: 180,
        //  alignment: Alignment.center,
          decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color:Colors.grey ,
              spreadRadius:2,
           //   blurRadius:10,
           // 
            ),
            
          ],
                //color: Colors.white,
                color: Colors.white,
            borderRadius:BorderRadius.circular(8),
             image: DecorationImage(
               
                      //image: NetworkImage(Img.imgPhoto[radomNumber]),
                      image: AssetImage('images/$radomNumber.png'),

                      fit: BoxFit.cover)
            
          ),
      //  child: Text('$text',style: TextStyle(fontSize: 20,color: Colors.black),),
      ),
    ),
  ),
    ),



    );
 }

}

