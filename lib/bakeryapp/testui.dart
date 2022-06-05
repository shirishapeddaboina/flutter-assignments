import 'package:flutter/material.dart';

class TestUI extends StatelessWidget {
  const TestUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Welcome to My App',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Positioned(
              top: 350.0,
              bottom: 0.0,
              child: Container(
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80.0),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}