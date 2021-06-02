import 'package:android_login_ui/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEKSNA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/logo.png",
          height: 100.0,
          width: 100.0,
        ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.folder_outlined, color: Colors.grey,),
              onPressed: () => {
                //TODO
              },
            ),
            IconButton(
                icon: Icon(Icons.line_weight_sharp , color: Colors.grey,),
                onPressed: () => {
                  //TODO
              },

            ),


        ]

    ),

      backgroundColor: Colors.white,
      //backgroundColor: Colors.white,

      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon.jpeg"),
                  fit: BoxFit.fill
                )
              ),
          ),),

          Positioned(
            top: 80,
              child: Container(
                height: 360,
                width: MediaQuery.of(context).size.width-40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ]
                  ),

                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 5),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            //TODO
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: 25),
                      _labelText('Email Address / Phone Number '),
                      _inputTextField('example@example.com', false),
                      SizedBox(height: 15),
                      _labelText('Enter Password:'),
                      _inputTextField('********', true),

                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 55,
                          width: 310,
                          child: new RaisedButton(
                            onPressed: () => {
                              //TODO
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            color: Color(0XFF303f9f),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              )),


          Positioned(
            top: MediaQuery.of(context).size.height-250,
            right: 0,
            left: 0,
            child: Column(children: [
              Divider(
                color: Colors.blue,
                height: 5,
                endIndent: 30,
                indent: 30,

              ),

              SizedBox(height: 10),

              Text(
                  "Or sign-in with",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black54,

              ),),

              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _loginSocialMediaBtn(
                      FontAwesomeIcons.google, googleColor),
                  SizedBox(width: 25),
                  _loginSocialMediaBtn(
                      FontAwesomeIcons.facebookF, facebookColor),
                ],
              ),


            ],),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height-140,
            right: 0,
            left: 0,
            child: Column(children: [
              Text('Don\'t have account? Sign Up!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.blueAccent,
                  fontSize: 16,
                ),

              )
            ],

            ),


          )



        ],




    ),
    );
  }



  //button to login in using scial media,
  _loginSocialMediaBtn(IconData icon, Color bgColor) {
    return SizedBox.fromSize(
      size: Size(40, 40), //button width and height
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Material(
          elevation: 16,
          shadowColor: Colors.white,
          color: bgColor,
          child: InkWell(
            splashColor: Colors.white,
            onTap: () {},
            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _inputTextField(hintText, bool obscuretext) {
    return Container(
      height: 56,
      padding: EdgeInsets.fromLTRB(16, 3, 16, 6),
      margin: EdgeInsets.all(8),
      decoration: raisedDecoration,
      child: Center(
        child: TextField(
          obscureText: obscuretext,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      ),
    );
  }

  _labelText(title) {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}

