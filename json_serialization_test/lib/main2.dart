import 'package:flutter/material.dart';




class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _showPass = false;
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  var _userNameErr = "Tài khoản không hợp lệ";
  var _passWordErr = "Mật khẩu phải trên 6 kí tự";
  var _userInvalid = false;
  var _passInvalid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            constraints: BoxConstraints.expand(),
            color: Colors.white,
            //child: SingleChildScrollView(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: Container(
                            width: 70,
                            height: 70,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black12,
                            ),
                            child: FlutterLogo()
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: Text("Xin Chao\nWelcome Back",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: TextField(
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          controller: _userController,
                          decoration: InputDecoration(
                            labelText: "USERNAME",
                            errorText: _userInvalid ? _userNameErr : null,
                            labelStyle: TextStyle(
                                color: Colors.grey, fontSize: 15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: Stack(
                            alignment: AlignmentDirectional.centerEnd,
                            children: <Widget>[
                              TextField(
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                controller: _passController,
                                obscureText: !_showPass,
                                decoration: InputDecoration(
                                  labelText: "PASSWORD",
                                  errorText: _passInvalid ? _passWordErr : null,
                                  labelStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ),
                              GestureDetector(
                                onTap: onToggleShowPass,
                                child: Text(
                                  _showPass ? "HIDE" : "SHOW",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              )
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: RaisedButton(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))),
                              onPressed: onSignInClicked,
                              child: Text("SIGN IN", style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                              )
                          ),
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          height: 56,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("NEW UESR? SIGN UP",
                                style: TextStyle(fontSize: 13,
                                    color: Colors.grey),
                              ),
                              /*Text(" SIGN UP", style: TextStyle(fontSize: 15,
                                              color: Colors.blue),
                                          ),*/
                              Text(" FORGOT PASSWORD?",
                                style: TextStyle(fontSize: 13,
                                    color: Colors.blue),)
                            ],
                          ),
                        ),

                    ]
                ),
              ),
            )
        )
       //)
    );
  }
    void onToggleShowPass(){
      setState(() {
        _showPass = !_showPass;
      });
    }
    void onSignInClicked(){
    setState(() {
      if (_userController.text.length < 6 ||
          !_userController.text.contains("@")) {
        _userInvalid = true;
      } else {
        _userInvalid = false;
      }
      if (_passController.text.length < 6) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }

      if(!_userInvalid && !_passInvalid) {
//        Navigator.push((context), MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
    }
}

