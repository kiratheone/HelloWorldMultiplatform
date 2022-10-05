import 'dart:developer';

import 'package:flutter/material.dart';

class LatihanWidget extends StatelessWidget {
  const LatihanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halo saya latihan"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text("Saya widget ditengah", style: TextStyle(fontSize: 32),),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.redAccent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("saya kiri", style: TextStyle(color: Colors.black, fontSize: 32)),
              Text("saya kanan", style: TextStyle(color: Colors.black, fontSize: 32)),
            ],
          ),
          Container(
            height: 90,
            width: double.infinity,
            color: Colors.yellow,
            child: Container(
              color: Colors.purple,
              margin: const EdgeInsets.all(16),
              child: const Center(
                  child: Text("Saya berwarna", style: TextStyle(color: Colors.white, fontSize: 32),
                  )
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 90,
            width: double.infinity,
            color: Colors.black,
            child: const Center(
                child: Text("Saya dibawah sendiri", style: TextStyle(color: Colors.white,  fontSize: 32),
                )
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("Saya dipencet");
        },
        child: const Icon(Icons.abc),
      ),
    );
  }
}
