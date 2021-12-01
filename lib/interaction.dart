import 'package:flutter/material.dart';

class inter extends StatefulWidget {
  const inter({Key? key}) : super(key: key);

  @override
  _interState createState() => _interState();
}

class _interState extends State<inter> {
  int liked=0;
  int dislike=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(

        children: [
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15,),
              ),
              onPressed: () {},
              child: Row(children: [
                Icon(Icons.thumb_up_outlined,size: 20,
                  color: liked==0? Color(0XFF37598A):Color(0XFF37598A) ,),
                SizedBox(width: 5,),
                Text('124',style: TextStyle(fontSize: 10,color: Color(0XFF37598A)),),
              ],)
          ),
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15,),
              ),
              onPressed: () {},
              child: Row(children: [
                Icon(Icons.thumb_down_alt_outlined,size: 20,
                  color: liked==0? Color(0XFFD65430):Color(0XFF37598A) ,),
                SizedBox(width: 5,),
                Text('124',style: TextStyle(fontSize: 10,color: Color(0XFFD65430)),),
              ],)
          ),
          TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15,),
              ),
              onPressed: () {},
              child: Row(children: [
                Icon(Icons.chat_bubble_outline,size: 20,
                  color:Colors.grey ,),
                SizedBox(width: 5,),
                Text('124',style: TextStyle(fontSize: 10,color:Colors.grey),),
              ],)
          ),
          SizedBox(width: 150,),
          Icon(Icons.upload_rounded,color: Colors.grey,),
        ],
      ),

    );
  }
}
