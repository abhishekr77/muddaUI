import 'package:flutter/material.dart';

Widget topU(String name,String level,IconData icon,Color iconColor,String Image){
  return  Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.white12,
          offset: const Offset(
            1.0,
            1.0,
          ),
          blurRadius: 1.0,
          spreadRadius: 1.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: const Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ),
      ] ,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      border: Border.all(
        width: 1.0,
        color: Color(0XFFF0F0F0),
      ), ),
    child: Padding(
      padding: EdgeInsets.fromLTRB(15, 2, 15, 2),
      child: Column(
        children: [
          SizedBox(height: 2,),
          CircleAvatar(backgroundImage: AssetImage(Image),),
          SizedBox(height: 2,),
          Text(name,style: TextStyle(color: Colors.black,fontSize: 10.0),),
          Row(
            children: [
              Icon(icon,color: iconColor,size: 15.0,),
              SizedBox(width: 2.0,),
              Text(level,style: TextStyle(color: Colors.grey,fontSize: 10.0),),
            ],),
          SizedBox(height: 13,),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              color: Color(0XFFF0F0F0),
              border: Border.all(
                color:Color(0XFFF0F0F0),
              ), ),
            child: Row(children: [
              SizedBox(width: 10,height: 2,),
              Text('+Follow',style: TextStyle(color: Colors.black54,fontSize: 7.0),),
              SizedBox(width: 10,height: 13,),
            ],),),
          SizedBox(height: 5,),
        ],
      ),
    ),
  );
}