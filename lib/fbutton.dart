
import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  _bottomState createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
        height: 50,
        decoration: new BoxDecoration(color: Colors.white),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           MaterialButton(onPressed: (){
             setState(() {
               currentTab==0;
             });
           },
             minWidth: 40,
             child:  Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.home_filled,size: 25,
                   color: currentTab==0? Color(0XFF274681):Color(0XFF8A8B8D) ,),
                 Text('Home',style: TextStyle(fontSize: 8,color:Color(0XFF274681)),),
               ],
             ),

           ),
            MaterialButton(onPressed: (){
              setState(() {
                currentTab==1;
              });
            },
              minWidth: 40,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.explore_outlined,size: 20,
                    color: currentTab==0? Color(0XFF8A8B8D):Color(0XFF8A8B8D) ,),
                  Text('Explore',style: TextStyle(fontSize: 10,color: Colors.black54),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
              child: MaterialButton(onPressed: (){
                setState(() {
                  currentTab==1;
                });
              },
                minWidth: 40,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0XFF274681),
                              offset: const Offset(
                                5,
                                7,
                              ),
                              blurRadius: 2,
                              spreadRadius: 2.0,
                            ),
                            //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius:2,
                    spreadRadius: 2.0,
                  ),

                          ] ,
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                      child: Icon(Icons.add_circle_rounded,size: 40,
                        color: currentTab==0? Color(0XFF274681):Color(0XFF8A8B8D) ,),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            MaterialButton(onPressed: (){
              setState(() {
                currentTab==1;
              });
            },
              minWidth: 40,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_none_sharp,size: 20,
                    color: currentTab==1? Color(0XFF274681):Color(0XFF8A8B8D) ,),
                  Text('Notifications',style: TextStyle(fontSize: 10,color: Colors.black54),),
                ],
              ),
            ),
            MaterialButton(onPressed: (){
              setState(() {
                currentTab==1;
              });
            },
              minWidth: 40,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(backgroundImage: AssetImage('images/p9.png',),radius: 10.0,),
                  Text('Profile',style: TextStyle(fontSize: 10,color: Colors.black54),),
                ],
              ),
            ),
        ],),
      ),
    );
  }
}
