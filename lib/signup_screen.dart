import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

TextEditingController usernameController = TextEditingController();
TextEditingController phoneController = TextEditingController();


class _SignupScreenState extends State<SignupScreen> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black26,
    body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 35.0,
            child: Image.asset("assets/starplayers.png"),
          ),

          const SizedBox(
            height: 70,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                hintStyle: const TextStyle(color:Colors.white),
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 6),
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                      children: [
                        GestureDetector(
                          onTap:() async{
                            final code =
                            await countryPicker.showPicker(context: context);
                            setState(() {
                              countryCode = code;
                            });
                          },
                          child:Row(
                            children: [
                              Container(
                                child: countryCode != null
                                    ? countryCode!.flagImage : null,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Text(
                                  countryCode?.dialCode ?? "+1",
                                  style: const TextStyle(color: Colors.white),),
                              ),
                            ],
                          ),
                        ),
                      ]
                  ),
                ),
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)),
                ),
                labelText: 'Phone Number',
                labelStyle: const TextStyle(color:Colors.white),
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          // USERNAME
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
                hintText: 'UserName',
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
            height: 25,
          ),


          // Signup Button

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
            child: const Center(
              child: Text(
                'Signup',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),


          // SignUp with Email
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            // child: InkWell(
            //   onTap: () => null
            //   ),
            child: const Center(
              child: Text(
                'Signup with Email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
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
                'Already a User? ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),

        ],
      ),
    ),
  );
}
}
