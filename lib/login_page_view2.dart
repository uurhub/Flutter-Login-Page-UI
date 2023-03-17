import 'package:flutter/material.dart';

class LoginPageUI extends StatelessWidget {
  const LoginPageUI({super.key});

  final _welcomeText = "Welcome";

  final double _welcomeFontSize = 30;

  final _welcomeFontWeight = FontWeight.bold;

  final _customInputText = "User Name";

  final _customInputPassword = "Password";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var textStyle = TextStyle(fontSize: _welcomeFontSize,fontWeight: _welcomeFontWeight,color: Colors.white);
    return Scaffold(
      backgroundColor: const Color(0xff21254A),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:height * .25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/topImage.png")
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _welcomeText,
                    style: textStyle,
                  ),
                  customSizedBox(),
                  _customInputDecoration(_customInputText),
                  customSizedBox(),
                  _customInputDecoration(_customInputPassword),
                  customSizedBox(),
                ],
              ),
            ),
            _loginButton(),
            _bottomButtons(),
            ],
        ),
      ),
      
    );
  }

_loginButton() {
    return Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(shape: const StadiumBorder(),primary: const Color(0xff7833c3)),
              child: const Text("Login"),
              ),
          );
  }

  Expanded _bottomButtons() {
    return Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text("Forgot Password",style: TextStyle(color: Colors.pink[200]),)),
                  TextButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(color: Colors.pink[200]))),
                ],
              )));
  }

Widget customSizedBox()=>const SizedBox(
  height: 20,
);

  TextField _customInputDecoration(String hintText) {
    return  TextField(
                  style:const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder:const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )
                    ),
                    focusedBorder:const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey
                      )
                    )
                  ),
                );
  }
}