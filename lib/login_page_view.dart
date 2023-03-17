import 'package:flutter/material.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              _sizedBox50(),
              const _iconPerson(),
                _sizedBox20(),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20
                    ),
                  ),
                  _sizedBox25(),
                  const UserNameTextField(
                    hintText: "Username",
                    obsourseText: false,
                  ),
                  _sizedBox10(),
                  const UserNameTextField(
                    hintText: "Password",
                    obsourseText: true,
                    ),
                    const _passwordTextButton(),
                    _sizedBox10(),
                    SizedBox(
                      height: 65,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: (){},
                        style:ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),primary: Colors.black), 
                          child: const Text("Sign In")),
                    ),
                    _sizedBox50(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.9,color: Colors.grey[500],
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Or continue with", style: TextStyle(color:Colors.grey[700] ),),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.9,color: Colors.grey[500],
                              )),
                        ],
                      ),
                    ),
                    _sizedBox25(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        _boxButtonImages(imagepath: "assets/google.png",),
                        SizedBox(width: 30,),
                        _boxButtonImages(imagepath: "assets/apple.png",)
                      ],
                    ),
                    _sizedBox25(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not a member?",style: TextStyle(color: Colors.grey[700]),),
                        TextButton(onPressed: (){}, child: Text("Register now",style: TextStyle(color: Colors.blue[800])),)
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _sizedBox10() => const SizedBox(height: 10,);

  SizedBox _sizedBox25() => const SizedBox(height: 25,);

  SizedBox _sizedBox20() => const SizedBox(height: 20,);

  SizedBox _sizedBox50() => const SizedBox(height: 50,);

}

class _boxButtonImages extends StatelessWidget {
  const _boxButtonImages({super.key, this.imagepath,});

  final imagepath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("clicked");
      },
      child: Ink(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white),
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
            ),
            
        child: Image.asset(imagepath,height: 40,)
        ),
    );
  }
}

class _iconPerson extends StatelessWidget {
  const _iconPerson({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: const Icon(
          Icons.person,
          size: 100,
          color: Colors.black,
          ),
      ));
  }
}

class _passwordTextButton extends StatelessWidget {
  const _passwordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(onPressed: (){},
          style: TextButton.styleFrom(
          primary: Colors.grey[800]), 
          child: const Text(
            "Forgat Password?")),
        ],
      ),
    );
  }
}

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({super.key, required this.hintText, required this.obsourseText});

  final String hintText;
  final bool obsourseText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obsourseText,
        
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])
        ),
      ),
    );
  }
}