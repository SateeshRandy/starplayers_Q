import 'package:flutter/material.dart';
import 'package:star_player/homescreen.dart';
import 'package:star_player/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController usernameController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Container(
        alignment: Alignment.center,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SizedBox(
        height: 35.0,
        child: Image.asset("assets/starplayers.png"),
    ),

    const SizedBox(
    height: 100,
    ),

     Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.done,
          maxLines: 1,
          controller: usernameController,
          decoration: const InputDecoration(
            fillColor: Colors.white,
            hintText: 'UserName or Phone Number',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            labelText: 'Username',
            labelStyle: TextStyle(color:Colors.white),
          ),
        ),
      ),
          const SizedBox(
            height: 100,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green[900],
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            // child: InkWell(
            //   onTap: () => null
            //   ),
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
            child: const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          ),
          const SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'New Here? ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                ),
                child: const Text(
                  'Signup',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
       ]
     ),
     ),
    );
  }
}
