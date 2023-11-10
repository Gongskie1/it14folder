import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String errorMessage;
  late bool isError;
  void checkLogin(username, password) {
    setState(() {
      if (username == '') {
        errorMessage = "Please input your username!";
        isError = true;
      } else if (password == '') {
        errorMessage = "Please input your username!";
        isError = true;
      } else {
        errorMessage = '';
        isError = false;
      }
    });
  }

  @override
  void initState() {
    errorMessage = 'This is an error';
    isError = false;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SIGN UP',
                style: txtStyle,
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter value',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter value',
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.cyan,
                  ),
                  onPressed: () {
                    checkLogin(
                        usernameController.text, passwordController.text);
                  },
                  child: const Text('LOGIN')),
              const SizedBox(
                height: 20,
              ),
              (isError)
                  ? Text(
                      errorMessage,
                      style: errortxtStyle,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  var txtStyle = const TextStyle(
      fontWeight: FontWeight.bold, letterSpacing: 2, fontSize: 40);

  var errortxtStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.red,
    letterSpacing: 1,
    fontSize: 20,
  );
}
