import 'package:easyshop/screendesign/view/buttonview.dart';
import 'package:flutter/material.dart';
class CardDesign extends StatefulWidget {
  const CardDesign({Key? key}) : super(key: key);

  @override
  State<CardDesign> createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 70),
        child: Center(
          child: Padding(
            padding:  EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [Container(
  height:size.height/3.5 ,
width: size.width,
decoration: BoxDecoration(
color: Colors.white,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [
    BoxShadow(
      color: Colors.grey,
      blurRadius: 2
    )
  ]
),
child: Column(
children: [
 Container(

   width: size.width,
   height: 85,
   decoration: BoxDecoration(
     borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)),
     color: Colors.blue,
   ),
   child:  Padding(
     padding:  EdgeInsets.all(12.0),
     child: Column(
       children: [
         Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Appointment Request",style: TextStyle(color: Colors.white,fontSize: 20),),
               Icon(Icons.more_vert,color: Colors.white,),
             ],
         ),
         SizedBox(height: 9,),
         Row(
             children: [
               Padding(
                 padding:  EdgeInsets.only(right: 10),
                 child: Icon(Icons.timer,color: Colors.white,),
               ),
               Text("12 jan 2020 ,12 Am",style: TextStyle(color: Colors.white54),)

             ],
         ),

       ],
     ),
   ),
 ),
  ListTile(title: Text("On InstaGram"),subtitle: Text("@EmailCode"),trailing: Icon(Icons.info,color: Colors.blue,size: 30,),
 leading:


     MaterialButton(onPressed: (){},
      child:ClipRRect(
        borderRadius: BorderRadius.circular(10),


        child: Image.asset("assets/images/prf.jpg",fit: BoxFit.fill,),
      )

    ),


 ),

Row(
children: [
  AcceptDecButton(
    name: "Accept",
    color: Colors.blue,
    txtcolor: Colors.white,
  ), AcceptDecButton(
    name: "Decline",
    color: Colors.grey,
    txtcolor: Colors.black12,
  ),

],
)

],
),
),
  SizedBox(height: 5,),
  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
     color: Colors.white,
     boxShadow: [
       BoxShadow(
         color: Colors.grey,
         blurRadius:1.5
       )
     ]
    ),
    width:size.width,
    height: size.height/6,

    child:Padding(
      padding:  EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Comment",style: TextStyle(color: Colors.blue,fontSize: 20),),
          SizedBox(height: 5,),

          ListTile(title: Text("Have youany questiojnfdadsjhfsadiuhs"
              "sgj",style: TextStyle(color: Colors.black,fontSize: 20),),trailing: Container(
            height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue
              ),
              child:Icon(Icons.call,color: Colors.white,)),)
        ],
      ),
    ),
  )
],
            ),
          ),
        ),
      ),
    );
  }
}
