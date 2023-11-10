import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController civilstatusController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  late String errorMessage;
  late bool isError;

  void checkRegister(
      name, username, password, cpassword, gender, civilstatus, birthdate) {
    setState(() {
      if (name == '') {
        errorMessage = "Please input your name!";
        isError = true;
      } else if (username == '') {
        errorMessage = "Please input your username!";
        isError = true;
      } else if (password == '') {
        errorMessage = "Please input your  password!";
        isError = true;
      } else if (cpassword == '') {
        errorMessage = "Please input your confirm password!";
        isError = true;
      } else if (password != cpassword) {
        errorMessage = "Both password must be the same!";
        isError = true;
      } else if (gender == '') {
        errorMessage = "Please input your gender!";
        isError = true;
      } else if (civilstatus == '') {
        errorMessage = "Please input your civil status!";
        isError = true;
      } else if (birthdate == '') {
        errorMessage = "Please input your birthdate!";
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
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: txtStyle,
                  ),
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter name',
                      prefixIcon: Icon(Icons.account_box),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                      prefixIcon: Icon(Icons.password),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: cpasswordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Confirm Password',
                      prefixIcon: Icon(Icons.password),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: genderController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter gender',
                      prefixIcon: Icon(Icons.male),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: civilstatusController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter civil status',
                      prefixIcon: Icon(Icons.social_distance),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: birthdateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Birthdate',
                      prefixIcon: Icon(Icons.calendar_month),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.cyan,
                      ),
                      onPressed: () {
                        checkRegister(
                          nameController.text,
                          usernameController.text,
                          passwordController.text,
                          cpasswordController.text,
                          genderController.text,
                          civilstatusController.text,
                          birthdateController.text,
                        );
                      },
                      child: const Text('REGISTER')),
                  (isError)
                      ? Text(
                          errorMessage,
                          style: errortxtStyle,
                        )
                      : Container(),
                ],
              ),
            )
          ],
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
