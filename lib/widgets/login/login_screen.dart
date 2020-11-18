import 'package:flutter/material.dart';

import '../../extension/color.dart';
import '../home/home_screen.dart';

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
                        image: AssetImage('assets/images/login_bg.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/login_bg_logo.png'),
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
                      color: HexColor.fromHex("#0F0F0F"),
                      fontFamily: 'Pacifico'
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
                          image: AssetImage('assets/images/login_apple.png'),
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
                    color: HexColor.fromHex('#1E562A'),
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
                            color: HexColor.fromHex("#1E562A"),
                            width: 1,
                            style: BorderStyle.solid
                        )
                    ),
                    onPressed: (){
                    },
                    child: Text(
                      "Google",
                      style: TextStyle(color: HexColor.fromHex("#1E562A"), fontSize: 20),
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
