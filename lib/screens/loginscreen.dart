import 'package:flutter/material.dart';
import 'package:project1/widgets/textfieldwidgets.dart';
 
class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}
 
class LoginScreenState extends State<LoginScreen> {
  // Captures Data
  final TextEditingController userName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
 
  // Displays Data
  void submitLogin() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("User Info"),
          content: ListBody(
            children: [
              Text("Username: ${userName.text}"),
              Text("Phone Number: ${phoneNumber.text}"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(textController: userName, labelText: "User Name"),
            SizedBox(height: 20),
            CustomTextField(textController: phoneNumber, labelText: "Phone Number"),
            SizedBox(height: 20),
            CustomTextField(textController: password, labelText: "Password"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: submitLogin,
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}