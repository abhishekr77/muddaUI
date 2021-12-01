import 'package:flutter/material.dart';
import 'interaction.dart';

Widget post( String name,String profilepic,String location,String type,String work,String date,String headline,String content,IconData icon,Color color,String image,double size){
  return Padding(
    padding: EdgeInsets.fromLTRB(10, 1, 10,1),
    child: Container(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [

              CircleAvatar(backgroundImage: AssetImage(profilepic),),
              SizedBox(width: 10,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(name,style: TextStyle(color: Colors.black,fontSize: 12.0),),
                          SizedBox(width: 5,),
                          Icon(icon,color: color,size: 15.0,),
                        ],
                      ),
                      SizedBox(height:5 ,),

                      Row(children: [
                        Text(location,style: TextStyle(color: Colors.grey,fontSize: 10.0),),
                        SizedBox(width: 3,),
                        Icon(Icons.circle,size: 5,color: Colors.black,),
                        SizedBox(width: 3,),
                        Text(type,style: TextStyle(color: Colors.grey,fontSize: 10.0),),
                        SizedBox(width: 3,),
                        Icon(Icons.circle,size: 5,color: Colors.black,),
                        SizedBox(width: 3,),
                        Text(work,style: TextStyle(color: Color(0XFF205193),fontWeight: FontWeight.bold,fontSize: 10.0),),

                      ],),],
                  ),
                ],
              ),
              SizedBox(width: size,),
              Row(
                children: [
                  Text(date,style: TextStyle(color: Colors.grey,fontSize: 10),),
                  Icon(Icons.more_vert,size: 10,color: Colors.grey,),
                ],
              ),],),
          SizedBox(height: 10,),
          Container(width: 385,height: 1,color: Colors.black12,),


          SizedBox(height: 10,),
          Container(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(headline,style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 13),),
              SizedBox(height: 5,),
              Text(content,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 10),),
              SizedBox(height: 10,),
              Text('#indiaEduaction',style: TextStyle(fontWeight: FontWeight.bold,
                  color: Color(0XFF205193),
                  fontSize: 8),),
              SizedBox(height: 5,),
              Image(image: AssetImage(image)),
              inter(),
            ],),),],),
    ),
  );

}