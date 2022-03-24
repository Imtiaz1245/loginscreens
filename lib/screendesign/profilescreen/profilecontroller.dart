import 'package:flutter/material.dart';
import 'package:easyshop/AuthenticationModule/view/textformfield.dart';
import 'package:easyshop/AuthenticationModule/view/authbutton.dart';
class ProfoleController1 extends StatefulWidget {
  const ProfoleController1({Key? key}) : super(key: key);

  @override
  State<ProfoleController1> createState() => _ProfoleController1State();
}

class _ProfoleController1State extends State<ProfoleController1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35,),
             ListTile(
               leading: IconButton(onPressed: () {  }, icon: Padding(
                 padding:  EdgeInsets.symmetric(vertical: 18.0),
                 child: Icon(Icons.menu,color: Color(
                     0xFFE537BF),),
               ),),
               title: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [

                   Text("Workers",style: TextStyle(color: Color(0xFFE537BF),fontSize: 18,fontWeight: FontWeight.bold),),
                   Text("REDESIGN",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                 ],

               ),
               trailing:  IconButton(onPressed: () {  }, icon: Padding(
                 padding:  EdgeInsets.symmetric(vertical: 18.0),
                 child: Icon(Icons.notifications,color: Color(
                     0xFFE537BF),),
               ),),
             ),
SizedBox(height: 20,),
              Stack(
                children: [
                  Container(
                    height: 130,
                    width: 138,
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: CircleAvatar(

                        backgroundImage: AssetImage("assets/images/profilepic.jpg",),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 85,
                    child: Container(
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2
                          )
                        ],
                        shape: BoxShape.circle
                      ),
                      child: IconButton(
                        color: Color(0xFFE537BF),
                        icon: Icon(Icons.camera_alt),
                        onPressed: (){},
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    TextFormFieldView(
                      hint: "Name",
                      prefixicon: Icon(Icons.person,color: Color(0xFFE537BF),),
                    ),
                    SizedBox(height: 34,),
                    TextFormFieldView(
                      hint: "Email",
                      prefixicon: Icon(Icons.email,color: Color(0xFFE537BF),),
                    ),
                    SizedBox(height: 34,),
                    TextFormFieldView(
                      hint: "About Me",
                      prefixicon: Icon(Icons.account_balance_outlined,color: Color(0xFFE537BF),),
                    ),
                    SizedBox(height: 34,),
                    TextFormFieldView(
                      hint: "Buisness Services",
suffixiconcondition: true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [

                    SizedBox(height: 2,),
                    ListTile(
                      leading: Icon(Icons.account_box_outlined,color: Color(0xFFE537BF),),
                      title: Text("GOVERNMENT ID",style: TextStyle(color:Color(0xFFE537BF,),fontSize: 20 ),),
                      trailing: IconButton(icon: Icon(Icons.arrow_forward_rounded,color: Color(0xFFE537BF),size: 40,), onPressed: () {  },),
                    ),
                    SizedBox(height: 2,),
                    ListTile(
                        leading: Icon(Icons.account_box_outlined,color: Color(0xFFE537BF),),
                        title: Text("PORTfOLIO",style: TextStyle(color:Color(0xFFE537BF,),fontSize: 20 ),),
                        trailing:TextButton(onPressed: () {  },child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Edit",style: TextStyle(color: Color(0xFFE537BF),fontSize: 10),),
                        ),)
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back_ios_outlined,size: 15,color: Color(0xFFE537BF),),
                          SizedBox(width: 15,),
                          Container(width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Color(0xFFE537BF)),

                            ),
                            child: ClipRRect(child: Image.asset("assets/images/pic1.jpg",height: 60,width: 50,fit: BoxFit.fill,),
                            borderRadius: BorderRadius.circular(15),),
                          ),
                          SizedBox(width: 12,),
                          Container(width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Color(0xFFE537BF)),

                            ),
                            child: ClipRRect(child: Image.asset("assets/images/pic1.jpg",height: 60,width: 50,fit: BoxFit.fill,),
                            borderRadius: BorderRadius.circular(15),),
                          ),
                          SizedBox(width: 12,),
                          Container(width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Color(0xFFE537BF)),

                            ),
                            child: ClipRRect(child: Image.asset("assets/images/pic1.jpg",height: 60,width: 50,fit: BoxFit.fill,),
                            borderRadius: BorderRadius.circular(15),),
                          ),
                          SizedBox(width: 15,),

                          Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Color(0xFFE537BF),),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Container(
                      width: 250,
                      height: 40,
                      child: AuthButton(
                        color: Color(0xFFE537BF),
                        onpres: (){},
                        radius: 10.0,
                        name: "Submit",
                        textcolor: Colors.white,

                        fontsize: 20.0,
                      ),
                    ),

                    SizedBox(height: 15,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
