import 'package:flutter/material.dart';

Widget SugProfile (String name,String Username,IconData icon,Color iconColor,String Image,double space){
  return Container(
    child: Padding(
      padding: EdgeInsets.fromLTRB(15, 7, 10, 7),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage(Image),),
          SizedBox(width: 10,),
          Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextStyle(color: Colors.black,fontSize: 12.0),),
                  Text(Username,style: TextStyle(color: Colors.grey,fontSize: 10.0),),
                ],
              ),
              SizedBox(width: 5,),
              Icon(icon,color:iconColor,size: 15.0,),
            ],
          ),
          SizedBox(width: space,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              color: Color(0XFFF0F0F0),
              border: Border.all(
                color: Color(0XFFF0F0F0),
              ), ),
            child: Row(children: [
              SizedBox(width: 10,height: 2,),
              Text('+Follow',style: TextStyle(color: Colors.black87,fontSize: 8),),
              SizedBox(width: 10,height: 17,),
            ],),),
        ],
      ),
    ),


  );
}