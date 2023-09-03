import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProjects> {

  myPro(language, title, discription, star){
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left:20 ,top: 40,right:10 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(language , style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
              SizedBox(
                height: 15,
              ),
              Text(title , style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 3,
              ),
              Text(discription , style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),),
              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Icon(Icons.star , color: Colors.white70, size: 18,),
                  SizedBox(
                    width: 4,
                  ),
                  Text(star , style: TextStyle(
                    color: Colors.white70,
                  ),),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){}, icon: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Projects'),
        backgroundColor: Color(0xff252525),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myPro('Flutter', 'Click 2 Code', 'An online Compiler', '10'),
              myPro('JAVA', 'Chess', 'Logic Building', '99'),
              myPro('PYTHON', 'Face Detection', 'Attendance using face detection', '10'),
              myPro('C', 'Tic Tac Toe', 'Game Developing', '10'),
              myPro('C++', 'Dot Epid', 'app for vaccination', '10'),
            ],
          ),
        ),
      ),
    );
  }
}