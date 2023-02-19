import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70)),
            image: DecorationImage(
                fit: BoxFit.fill,
                image:
                    AssetImage("assets/images/background_purple_image.png"))),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.3,
            ),
            SizedBox(
                height: 120,
                width: 120,
                child: Image.asset("assets/images/logo.png")),
            const SizedBox(height: 15),
            const Text(
              "CRYPTOPE",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
