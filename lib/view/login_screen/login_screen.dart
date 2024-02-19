import 'package:flutter/material.dart';
import 'package:login_home_ui/view/home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController uName = TextEditingController();
    TextEditingController pwd = TextEditingController();

    var formKey = GlobalKey<FormState>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //     backgroundColor: Colors.transparent,
      //     title: Text("Login"),
      //     titleTextStyle: TextStyle(
      //         color: Color(0xff8340ff),
      //         fontSize: 40,
      //         fontWeight: FontWeight.w500,
      //         letterSpacing: 1.5),
      //     toolbarHeight: 150),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://marketplace.canva.com/EAFATkC6RqA/1/0/900w/canva-purple-%26-blue-gradient-phone-wallpaper-9mergJIxwDk.jpg",
                ))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color(0xff8340ff),
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5),
              ),
              CircleAvatar(
                  radius: 70,
                  child: Icon(Icons.account_circle_outlined, size: 140),
                  backgroundColor: Colors.transparent),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                          controller: uName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter valid username";
                            } else if (value != "angel") {
                              return "Wrong username";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "Username or email address",
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300))),
                      SizedBox(height: 10),
                      TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter valid password";
                            } else if (value != "1234") {
                              return "Wrong password";
                            } else {
                              return null;
                            }
                          },
                          controller: pwd,
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300))),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate() == true) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          } else {
                            formKey.currentState!.validate();
                          }
                        },
                        child: Text(
                          "LOG IN",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        style: ButtonStyle(
                            elevation: MaterialStatePropertyAll(50),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 15)),
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff8441ff)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
