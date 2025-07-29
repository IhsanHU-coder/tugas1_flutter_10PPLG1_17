import 'package:flutter/material.dart';
import 'package:project_dart_1/Main_Menu.dart';
import 'package:project_dart_1/Register_Page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "Login Status";

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to the Login Page!", 
            style: TextStyle(fontSize: 18,color: Colors.blueGrey, fontWeight: FontWeight.bold),),
            Text("Please login using your username and password."),
            //image dari resources
            SizedBox(height: 10),
            Center(
              child: Image.asset(
                'assets/gambar.png',
                width: 200,
                height: 200,
              ),
            ),
            //buatlah isian username dan password
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: TextField(
                controller: txtUsername,
                decoration: InputDecoration(
                  labelText: "username",
                  hintText: "Enter your username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            TextField(
              controller: txtPassword,
              obscureText: true, // untuk menyembunyikan karakter password
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                border: OutlineInputBorder(), 
              ),
            ),
            //button login
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    //jika username dan password adalah admin maka muncul snackbar
                    if(txtUsername.text == "Ihsan" && txtPassword.text == "Ihsan"){
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Successfull")),
                      );
                      setState(() {
                        statusLogin = "Login Successfull";
                        print(statusLogin);
                      });
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => MainMenu()),
                        );
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Error")),
                      );
                      setState(() {
                        statusLogin = "Login Error";
                        print(statusLogin);
                      });
                    }
                  },
                  child: Text("Login"),
                ),
              ),
            ),
            Text(statusLogin),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    //jika username dan password adalah admin maka muncul snackbar

                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                  },
                  child: Text("Register"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}