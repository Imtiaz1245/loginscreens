import 'package:easyshop/AuthenticationModule/view/profileitemlistview.dart';
import 'package:flutter/material.dart';
class ProfileController extends StatefulWidget {
  const ProfileController({Key? key}) : super(key: key);

  @override
  State<ProfileController> createState() => _ProfileControllerState();
}

class _ProfileControllerState extends State<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      SizedBox(height: 105,),
    Center(
      child: Text("My Profile",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),

    ),
          SizedBox(height: 30,),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height:70,
                    width: 70,
                    child: CircleAvatar(backgroundImage:  AssetImage("assets/images/profilepic.jpg",),)),
              ),
Column(
crossAxisAlignment: CrossAxisAlignment.start
  ,children: [

  Text("Muhammad Imtiaz",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
Padding(
  padding:  EdgeInsets.only(top: 8.0),
  child:   Text("Imtiaz12685@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
)
],),
              ],
          ),
          SizedBox(
            height: 35,
          ),
          ProfileListView(leadingicon: Icons.timer,title:"Order History" ,
          ),
          SizedBox(height: 5,),

      ProfileListView(leadingicon: Icons.location_on,title:"Shipping Address"  ,),
          SizedBox(height: 5,),

      ProfileListView(leadingicon: Icons.favorite_outline,title:"Whishlist" ,latest: "New",containercolor: Colors.red,),
          SizedBox(height: 5,),

      ProfileListView(leadingicon: Icons.edit,title:"Edit Profile"  ,),
          SizedBox(height: 5,),

      ProfileListView(leadingicon: Icons.notifications,title:"Notifications" ,),
          SizedBox(height: 5,),

      ProfileListView(leadingicon: Icons.settings,title:"Settings"  ,),
          SizedBox(height: 5,),

      ProfileListView(leadingicon: Icons.exit_to_app,title:"Log Out"  ,),
        ],
      ),
    );
  }
}
