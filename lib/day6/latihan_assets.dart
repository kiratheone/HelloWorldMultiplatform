import 'package:flutter/material.dart';

class LatihanAssets extends StatelessWidget {
  const LatihanAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan asset"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset("assets/background.png",
              fit: BoxFit.fill,
              width: double.infinity,
              height: 250,
            )
          ],
        ),
      ),
    );
  }
}
