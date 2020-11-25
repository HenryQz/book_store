import 'package:audio_story/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:audio_story/generated/r.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/loginScreen";
  LoginScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage(R.images_login_bg),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(R.images_login_bg_logo),
                          fit: BoxFit.fill,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Text(
                  "Truyện Cổ Tích Audio",
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF0F0F0F),
                      fontFamily: R.font_pacifico
                  ),
                ),
              ),
              Container(
                width: 320.0,
                height: 44.0,
                margin: EdgeInsets.only(top: 10, bottom: 5),
                child: MaterialButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(R.images_login_apple),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Login with Apple",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                        )
                      ],
                    )
                ),
              ),
              Container(
                width: 320.0,
                height: 44.0,
                margin: EdgeInsets.only( bottom: 5),
                child: MaterialButton(
                    color: Color(0xFF1E562A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: (){
                    },
                    child: Text(
                      "Facebook",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                ),
              ),
              Container(
                width: 320.0,
                height: 44.0,
                margin: EdgeInsets.only( bottom: 5),
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                            color: Color(0xFF1E562A),
                            width: 1,
                            style: BorderStyle.solid
                        )
                    ),
                    onPressed: (){
                    },
                    child: Text(
                      "Google",
                      style: TextStyle(color: Color(0xFF1E562A), fontSize: 20),
                    )
                ),
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'Điều khoản', style: TextStyle(fontSize: 12, color: Colors.deepOrange)),
                            TextSpan(text: ' người dùng và', style: TextStyle(fontSize: 12, color: Colors.black)),
                            TextSpan(text: ' Bảo mật', style: TextStyle(fontSize: 12, color: Colors.deepOrange)),
                            TextSpan(text: ' thông tin', style: TextStyle(fontSize: 12, color: Colors.black)),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
