import 'package:flutter/material.dart';
class ProfileListView extends StatefulWidget {
  final title,leadingicon,trailingicon,containercolor,latest,ontap;
  const ProfileListView({Key? key,required this.title,required this.leadingicon,required this.trailingicon, this.containercolor, this.latest="", this.ontap}) : super(key: key);

  @override
  State<ProfileListView> createState() => _ProfileListViewState();
}

class _ProfileListViewState extends State<ProfileListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: (){},
        child: ListTile(
          leading: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Color(0xffd6eaf3),
            ),
            child: Icon(widget.leadingicon),
          ),
          title: Row(
            children: [
              Text(widget.title,style: TextStyle(fontSize: 20)),
              SizedBox(width: 15,),
              Container(
                  decoration: BoxDecoration(
                      color: widget.containercolor,
                      borderRadius: BorderRadius.circular(2)
                  ),

                  child:Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 1),
                    child: Text(widget.latest,style: TextStyle(color: Colors.white,)),
                  ),
              )
            ],
          ),
          trailing: Icon(widget.trailingicon),),
      ),
    );
  }
}
