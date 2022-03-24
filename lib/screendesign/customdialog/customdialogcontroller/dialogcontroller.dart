import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easyshop/AuthenticationModule/view/textformfield.dart';
import 'package:easyshop/AuthenticationModule/view/authbutton.dart';
class CustomDialog extends StatefulWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  TextEditingController userName=TextEditingController();
  TextEditingController detail=TextEditingController();

  String? userNametxt,detailTxt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Information"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           TextFormFieldView(
             controller: userName,
             hint: "User Name",
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
             ),
           ),
           SizedBox(height: 10,),
           TextFormFieldView(
             controller: detail,
             hint: "Detail",
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
             ),
           ),
            SizedBox(height: 20,),
            AuthButton(
              color: Colors.blue,
              textcolor: Colors.white,
              radius: 10.0,
              name: "Show Alert",
              onpres: (){
                setState(() {
                  detailTxt=detail.text;
                  userNametxt=userName.text;
                  if(userNametxt!.isEmpty||detailTxt!.isEmpty){
                    userNametxt="UserName is Empty";
                    detailTxt="Detail is Empty";
                  };
                });
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 200,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text(userNametxt.toString(),style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,fontWeight: FontWeight.bold
                        ),)),
SizedBox(height: 20,),
                      Padding(
                        padding:  EdgeInsets.all(5.0),
                        child: Text(detailTxt.toString()),
                      ),

                 Expanded(
                   child: Align(
                     alignment:Alignment.bottomRight ,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [

                       MaterialButton(onPressed: (){},
                         child: Text("YES"),),
                       MaterialButton(onPressed: (){},
                         child: Text("NO"),),

                     ],),

                   ),
                 )
                      ],
                    ),
                  ),
                  ),
                );
              },
            )

          ],
        ),
      ),
    );
  }
}
