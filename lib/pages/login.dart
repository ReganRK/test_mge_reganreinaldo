import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        decoration: InputDecoration(
                          filled: true,
                          hintText: "Username",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black38
                          ),
                          fillColor: Colors.transparent,
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
                        decoration: InputDecoration(
                          filled: true,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black38
                          ),
                          fillColor: Colors.transparent,
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
                          print('Ke home');
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
      ),
    );
  }
}