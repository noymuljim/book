import 'package:book_app/bottombar.dart';
import 'package:flutter/material.dart';

class paydone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand( // 👈 takes full screen space
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // 👈 keeps content compact
            children: [

              Image.asset(
                "assets/images/tick.png",
                width: 150,
                height: 150,
              ),

              SizedBox(height: 20),

              Text("We received your payment successfully."),
              Text("Thanks for shopping!"),

              SizedBox(height: 40),

              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Bottombar()),
                    (route) => false,
                  );
                },

                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Center(
                    child: Text(
                      "Tap to Continue",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}