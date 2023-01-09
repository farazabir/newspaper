import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: Text(
                "Newspaper Bd",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "images/logo.png",
                height: 400,
                width: 500,
                fit: BoxFit.cover,
              ),
            ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color(0xff000000),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
                  
          child: const Text(
            'Start',
            style: TextStyle(fontSize: 24),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("Content");
          },
),
],
        ),
      
    );
  }
}
