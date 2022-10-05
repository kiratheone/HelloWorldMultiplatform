import 'package:flutter/material.dart';

import 'page_3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context,"dari halaman 2");
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Page 2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Page3(),
                    ),
                  );
                },
                child: const Text("Navigation to Page 3"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,"dari halaman 2");
                },
                child: const Text("Back to page 1"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

