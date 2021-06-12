import 'package:evoting/src/pages/login_page.dart';
import 'package:evoting/src/utils/app_utils.dart';
import 'package:evoting/src/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class SignupPage extends StatelessWidget {
  final String imageURL =
      "https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2Forigami.png?alt=media";

  Widget _buildPageContent(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
            child: Container(
          height: getDeviceHeight(context),
          color: Colors.blue.shade100,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: getViewportHeight(context) * 0.05,
              ),
              Hero(
                  child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        appName,
                        style: TextStyle(
                            fontFamily: "Pacifico",
                            fontSize: getViewportHeight(context) * 0.065),
                      )),
                  tag: "appName"),
              _buildSignupForm(context),
              Expanded(
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginPage()));
                          },
                          child: Text("Already have an account? Login!",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize:
                                      getViewportHeight(context) * 0.022)))))
            ],
          ),
        )));
  }

  Container _buildSignupForm(context) {
    return Container(
      padding: EdgeInsets.all(getViewportHeight(context) * 0.03),
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: getViewportHeight(context) * 0.65,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: getViewportHeight(context) * 0.1,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getViewportHeight(context) * 0.02),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                            color: Colors.black, fontFamily: "Mulish"),
                        decoration: InputDecoration(
                            hintText: "Email address",
                            hintStyle: TextStyle(
                                color: Colors.black, fontFamily: "Mulish"),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.email,
                              color: Colors.blue,
                            )),
                      )),
                  Container(
                    child: Divider(
                      color: Colors.blue.shade400,
                    ),
                    padding: EdgeInsets.only(
                        left: getViewportHeight(context) * 0.02,
                        right: getViewportHeight(context) * 0.02,
                        bottom: getViewportHeight(context) * 0.01),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getViewportHeight(context) * 0.02),
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(
                            color: Colors.black, fontFamily: "Mulish"),
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Colors.black, fontFamily: "Mulish"),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.blue,
                            )),
                      )),
                  Container(
                    child: Divider(
                      color: Colors.blue.shade400,
                    ),
                    padding: EdgeInsets.only(
                        left: getViewportHeight(context) * 0.02,
                        right: getViewportHeight(context) * 0.02,
                        bottom: getViewportHeight(context) * 0.01),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getViewportHeight(context) * 0.02),
                      child: TextField(
                        style: TextStyle(
                            color: Colors.black, fontFamily: "Mulish"),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(
                                color: Colors.black, fontFamily: "Mulish"),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.blue,
                            )),
                      )),
                  Container(
                    child: Divider(
                      color: Colors.blue.shade400,
                    ),
                    padding: EdgeInsets.only(
                        left: getViewportHeight(context) * 0.02,
                        right: getViewportHeight(context) * 0.02,
                        bottom: getViewportHeight(context) * 0.01),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getViewportHeight(context) * 0.02),
                      child: TextField(
                        maxLength: 12,
                        keyboardType: TextInputType.numberWithOptions(
                            decimal: false, signed: false),
                        style: TextStyle(
                            color: Colors.black, fontFamily: "Mulish"),
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: "Aadhar Number",
                            hintStyle: TextStyle(
                                color: Colors.black, fontFamily: "Mulish"),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.person,
                              color: Colors.blue,
                            )),
                      )),
                  Container(
                    child: Divider(
                      color: Colors.blue.shade400,
                    ),
                    padding: EdgeInsets.only(
                        left: getViewportHeight(context) * 0.02,
                        right: getViewportHeight(context) * 0.02,
                        bottom: getViewportHeight(context) * 0.01),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getViewportHeight(context) * 0.02),
                      child: TextField(
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                            color: Colors.black, fontFamily: "Mulish"),
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: "Mobile Number",
                            hintStyle: TextStyle(
                                color: Colors.black, fontFamily: "Mulish"),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.phone_android,
                              color: Colors.blue,
                            )),
                      )),
                  Container(
                    child: Divider(
                      color: Colors.blue.shade400,
                    ),
                    padding: EdgeInsets.only(
                        left: getViewportHeight(context) * 0.02,
                        right: getViewportHeight(context) * 0.02,
                        bottom: getViewportHeight(context) * 0.01),
                  ),
                  SizedBox(height: getViewportHeight(context) * 0.02),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.blue.shade600,
                child: Icon(Icons.person),
              ),
            ],
          ),
          Container(
            height: getViewportHeight(context) * 0.68,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0)),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: Container(
                    height: getViewportHeight(context) * 0.05,
                    width: getViewportWidth(context) * 0.2,
                    alignment: Alignment.center,
                    child: Text("Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Averia Serif Libre"))),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent(context),
    );
  }
}
