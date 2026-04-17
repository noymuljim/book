import 'package:book_app/Forget.dart';
import 'package:book_app/bottombar.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emailText = TextEditingController();
    var passwordText = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Opacity(
                  opacity: 0.9,
                  child: Image.asset("assets/images/signin.png"),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 30),

                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    controller: emailText,
                    decoration: InputDecoration(
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.brown, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                    controller: passwordText,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.brown, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forget()),
                    );
                  },
                  child: Text(
                    "Forget password?",
                    style: TextStyle(fontSize: 14),
                  ),
                ),

                SizedBox(height: 28),

                InkWell(
                  onTap: () {
                   Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Bottombar()),
);
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffA78D78),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(flex: 1, child: Row()),
        ],
      ),
    );
  }
}
