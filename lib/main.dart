import 'package:flutter/material.dart';
import 'fbutton.dart';
import 'top_usetile.dart';
import 'suggest_Profile.dart';
import 'package:mudda/post_Content.dart';

void main() {
  runApp(front());
}

class front extends StatefulWidget {
  const front({Key? key}) : super(key: key);

  @override
  _frontState createState() => _frontState();
}

class _frontState extends State<front> {
  int tap=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image(
                image: AssetImage('images/logo.png'),
                width: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Mudda',
                style: TextStyle(
                    color: Color(0XFF205193),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
                textAlign: TextAlign.left,
              ),
              SizedBox(width: 116.5,),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15,),
                  ),
                  onPressed: () {},
                  child: Column(children: [Text('Groups', style: TextStyle(fontSize: 15, color:tap==1? Color(0XFF37598A):Colors.black54 ,
                    fontFamily: 'WorkSans',fontWeight: FontWeight.bold,
                  ),),
                    Container(width: 15,height: 2,color:tap==1? Color(0XFF37598A):Colors.white)

                  ],)
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15,),
                ),
                onPressed: () {},
                child: Column(children: [Text('Following', style: TextStyle(fontSize: 15, color:tap==0? Color(0XFF37598A):Colors.grey,
                  fontFamily: 'WorkSans',
                  fontWeight: FontWeight.bold
                ),),
                  Container(width: 15,height: 2,color:tap==0? Color(0XFF37598A):Colors.white,)

                ],)
              ),
            ],
          ),
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  decoration: new BoxDecoration(color: Colors.white),
                  height: 612.5,
                  width: 500,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 15, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top users',
                              style: TextStyle(
                                  fontFamily: 'WorkSans',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                              fontSize: 18),
                            ),
                            Text(
                              'See all',
                              style: TextStyle(color: Colors.grey,fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            height: 110,
                            width: 380,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                topU('Monika SIngh', 'Admin', Icons.verified_user_sharp,Color(0XFF00671F), 'images/p.png'),
                                SizedBox(width: 5),
                                topU('Vikrant Chungh', 'Media', Icons.verified,Color(0XFFFD9F06) ,'images/P4.png'),
                                SizedBox(width: 5),
                                topU('Lokesh Verma', 'Admin', Icons.verified,Color(0XFFFD9F06), 'images/P3.png'),
                                SizedBox(width: 5),
                                topU('Kareema Khan', 'Admin', Icons.verified_user_sharp,Color(0XFF00671F), 'images/P2.png'),
                                SizedBox(width: 5),

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 1, 20, 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(

                              'Suggestions',
                              style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 19),

                            ),
                            Text(
                              'See all',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SugProfile('Lovish Sethi   ','@vmlovish', Icons.verified_user, Colors.green, 'images/p5.png',172),
                      SugProfile('Kanika Singal ','@vmlovish', Icons.verified_rounded,Color(0XFFFD9F06), 'images/p7.png',170),
                      SugProfile('Waseem Khan','@waseem', Icons.verified_user, Colors.green, 'images/p6.png',170),
                      SugProfile('Shilpa Shakti  ','@sshakti', Icons.verified_rounded, Color(0XFFFD9F06), 'images/p8.png',172),

                      Center(
                          child: Text(
                        'View All',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 10,
                        color: Color(0XFFF0F0F0),
                      ),
                      post('Ishan Verma', 'images/P4.png','Bihar(S)', 'Problem', 'Education', '2 days ago', 'Quality of Education in Bihar', 'Modern Bihar has an inadequate educational infrastructure creating ahuge mismatch between demand and supply. This problem is furthercompounded by increases in population. The craving for highereducationamong the general population of Bihar has led to.....seemore',Icons.verified_outlined,Color(0XFF205193), 'images/pp.png',120),
                      post('Vikrant Mishra', 'images/p9.png','Bihar(S)', 'Problem', 'Government', '20 days ago', 'Quality of Education in Bihar', 'Modern Bihar has an inadequate educational infrastructure creating ahuge mismatch between demand and supply. This problem is furthercompounded by increases in population. The craving for highereducationamong the general population of Bihar has led to.....seemore',Icons.verified_user_sharp,Color(0XFF00671F), 'images/pp.png',105),
                      Container(
                        height: 5,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: bottom(),
      ),
    );
    ;
  }
}
