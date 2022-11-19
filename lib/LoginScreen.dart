import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routing = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  String yourname = '';

  final TextEditingController fullpassword = TextEditingController();
  String yourpass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        key: loginKey,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text('Hello, please insert your name and password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: fullname,
                decoration: InputDecoration(
                    hintText: 'Please enter your name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: fullpassword,
                decoration: InputDecoration(
                    hintText: 'Please enter your password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  yourname = fullname.text;
                  yourpass = fullpassword.text;
                });
              },
              child: const Text('Process'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Your name is $yourname",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Your password is $yourpass",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
