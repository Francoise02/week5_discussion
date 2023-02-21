import 'package:flutter/material.dart';
import 'Screen1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromRGBO(55, 113, 91, 1),
      width: width,
      height: height,
      child: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 350, 0, 0),
          child: Column(
            children: [
              const Text(
                "Therapy & Care",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 30, width: double.infinity),
              const Text(
                "We help proffesional therapists and patients find each other",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  Component1(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(200, 50)),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(55, 113, 91, 1)),
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
