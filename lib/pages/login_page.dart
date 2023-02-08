import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoggedIn = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    // Listen to changes user made during signin method.
    FirebaseAuth.instance.authStateChanges().listen((user) {
      // Not null means user is still loggedin .
      isLoggedIn = user != null;
      setState(() {});

      // if (user != null) {
      //   isLoggedIn = true;
      // }
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool flag = false;

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 200, right: 20, bottom: 70),
            child: Column(
              children: [
                // Logo should be here ----------------------------------.
                Image.asset(
                  'lib/assets/thechefzlogo.png',
                  width: 150,
                ),
                const SizedBox(height: 50),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const Text(
                        //   'Enter your mobile number',
                        //   style: TextStyle(fontSize: 17),
                        // ),
                        const SizedBox(height: 10),
                        if (isLoggedIn) const Text('You are LoggedIn'),
                        if (!isLoggedIn) const Text('You are NOT LoggedIn'),
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          decoration: const BoxDecoration(
                            border: Border.fromBorderSide(BorderSide(color: Colors.black12, width: 1)),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              hintText: 'Enter your mobile number',
                              hintStyle: TextStyle(color: Colors.black26),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          decoration: const BoxDecoration(
                            border: Border.fromBorderSide(BorderSide(color: Colors.black12, width: 1)),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(color: Colors.black26),
                              border: InputBorder.none,
                            ),
                            obscureText: true,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Icon(Icons.check_box_outline_blank),
                            // Checkbox(
                            //   value: flag,
                            //   onChanged: (bool? value) {
                            //     setState(() {
                            //       flag = value!;
                            //       print(value);
                            //     });
                            //   },
                            // ),
                            Text(
                              'I read and accept The Chefz ',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Terms and Conditions',
                              style: TextStyle(color: Color.fromARGB(255, 255, 89, 0), fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () async {
                            final email = emailController.text;
                            final password = passwordController.text;

                            final resuilt = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: email,
                              password: password,
                            );
                          },

                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage())),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 165, 135, 170),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            width: double.infinity,
                            child: const Text(
                              'Next',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Text(
                              'Don\'t want to sign in ? ',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Click Here',
                              style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF2e1326),
    );
  }
}
