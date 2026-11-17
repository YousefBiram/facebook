import 'package:face_app/app_color.dart';
import 'package:face_app/app_screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login_screen";
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;
  final _pass = TextEditingController();
  final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColor.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Image.asset("assets/images/facebook.png"),
                  SizedBox(height: 60),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _email,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFE3EBF5),
                            hintText: "Mobile Number or Email Address",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: AppColor.gray,
                                width: 2,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null ||
                                !RegExp(r'^[\w.+-]+@gmail.com$')
                                    .hasMatch(value)) {
                              return 'Invalid Email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          controller: _pass,
                          obscureText: _obscure,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFE3EBF5),
                            hintText: "Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscure = !_obscure;
                                });
                              },
                              icon: Icon(
                                _obscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: AppColor.gray,
                                width: 2,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null ||
                                !RegExp(r'[!@#$%^&*(),.?":{}|<>_]')
                                    .hasMatch(value)){
                              return 'Password Should Contain Special Characters';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, HomeScreen.routeName);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(16),
                            ),
                            fixedSize: Size(420, 55),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: Text(
                      "Forgotten Password ?",
                      style: TextStyle(color: AppColor.gray, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 230),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(16),
                        side: BorderSide(color: AppColor.blue),
                      ),
                      fixedSize: Size(420, 55),
                    ),
                    child: Text(
                      "Create Account",
                      style: TextStyle(color: AppColor.blue, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset("assets/images/meta.png"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

