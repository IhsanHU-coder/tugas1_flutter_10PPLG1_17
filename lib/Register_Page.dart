import 'package:flutter/material.dart';
import 'package:project_dart_1/Main_Menu.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController txtConfirmPassword = TextEditingController();
  TextEditingController txtUsername= TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusRegister = "Register Status";

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(title: Text("Register Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to the Register Page!", 
            style: TextStyle(fontSize: 18,color: Colors.blueGrey, fontWeight: FontWeight.bold),),
            Text("Please Register using your username and password."),
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
            SizedBox(height: 10),
            TextField(
              controller: txtConfirmPassword,
              obscureText: true, // untuk menyembunyikan karakter password
              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Enter back your password",
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
                    if (txtPassword.text != "" && txtConfirmPassword.text != "" && txtUsername.text != ""){
                    if(txtConfirmPassword.text == txtPassword.text){
                      
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Register Successfull")),
                      );
                      setState(() {
                        statusRegister = "Register Successfull";
                        print(statusRegister);
                      });
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => MainMenu()),
                        );
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Tidak sama passwordnya")),
                      );
                      setState(() {
                        statusRegister = "Register Error";
                        print(statusRegister);
                      });
                    }
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Tolong di isi username, password dan juga confirm passwordnya")),
                      );
                      setState(() {
                        statusRegister = "Register Error";
                        print(statusRegister);
                      });
                    }
                  },
                  child: Text("Register"),
                ),
              ),
            ),
            Text(statusRegister),
            
          ],
        ),
      ),
    );
  }
}