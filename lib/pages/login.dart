import 'package:flutter/material.dart';
import 'package:test_mge_reganreinaldo/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isUsernameCorrect = true;
  bool isPasswordCorrect = true;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void checkUsername(){
    if (usernameController.text == 'regan') {
      setState(() {
        isUsernameCorrect = true;
      });
    }
    else{
      setState(() {
        isUsernameCorrect = false;
      });
    }
  }

  void checkPassword(){
    if (passwordController.text == '123456') {
      setState(() {
        isPasswordCorrect = true;
      });
    }
    else{
      setState(() {
        isPasswordCorrect = false;
      });
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: body()
    );
  }

  Column body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/login.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          margin: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/user.png',
                    width: 25,
                    height: 25,
                  ),
                  Text(
                    'Username'
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Username",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black38
                        ),
                        fillColor: Colors.transparent,
                        errorText: isUsernameCorrect ? null : 'Username tidak sesuai'
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40,),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/key.png',
                    width: 25,
                    height: 25,
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    'Password'
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black38
                        ),
                        fillColor: Colors.transparent,
                        errorText: isPasswordCorrect ? null : 'Password tidak sesuai'
                        // contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  const SizedBox(width: 20,),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: () {
                        checkUsername();
                        checkPassword();

                        if (isUsernameCorrect && isPasswordCorrect) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        }
                      }, 
                      child: Text(
                        'Submit'
                      )
                    )
                  ),
                  const SizedBox(width: 20,),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}