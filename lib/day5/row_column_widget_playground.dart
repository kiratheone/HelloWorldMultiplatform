import 'dart:developer';

import 'package:flutter/material.dart';

class CobaCobaWidget extends StatelessWidget {
  const CobaCobaWidget({Key? key}) : super(key: key);
  final String name = "cucu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("halo $name"),
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: ListView(
          children: [
            const Text("Text 1"),
            const SizedBox(height: 6),
            const Text("Text 2"),
            const SizedBox(height: 6),
            const Text("Text 3"),
            const SizedBox(height: 6),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            const Text("Text 4"),
            InkWell(
              onTap: () {
                log("Hai Ink Well");
              },
              child: const SizedBox(
                height: 80,
                width: 80,
                child: Text("Saya Button inkwell")
              ),
            ),
            GestureDetector(
              onTap: () {
                log("Hai gesture");
              },
              child: SizedBox(
                height: 80,
                width: 80,
                child: Text("Saya Button gesture")
              ),
            ),
            const SizedBox(height: 6),
            const SizedBox(
                width: double.infinity,
                child: Text("Text 5", textAlign: TextAlign.center,)
            ),
          ],
        ),
      ),
    );
  }
}
