import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget{
  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 31,left: 100),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/images/jaivik2.png',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
           Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.49),
              child: Column(
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Text('Hello I am',
                      style: TextStyle(
                          fontFamily: "Soho",
                          color: Colors.white,
                          fontSize: 30,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('JAIVIK chauhan',
                      style: TextStyle(
                          fontFamily: "Soho",
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Soho",
                        fontSize: 20),
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(onPressed: (){}, child: Text('Hire Me'),
                      style: TextButton.styleFrom(backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      ),),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(FontAwesomeIcons.instagram,color: Colors.white,
                      )),
                      IconButton(onPressed: (){},
                          icon: Icon(FontAwesomeIcons.twitter,color: Colors.white,
                          )),
                      IconButton(onPressed: (){},
                          icon: Icon(FontAwesomeIcons.facebook,color: Colors.white,
                          )),
                      IconButton(onPressed: (){},
                          icon: Icon(FontAwesomeIcons.signal,color: Colors.white,
                          )),
                      IconButton(onPressed: (){},
                          icon: Icon(FontAwesomeIcons.discord,color: Colors.white,
                          )),
                      IconButton(onPressed: (){},
                          icon: Icon(FontAwesomeIcons.linkedin,color: Colors.white,
                          )),
                      IconButton(onPressed: (){},
                          icon: Icon(FontAwesomeIcons.github,color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
