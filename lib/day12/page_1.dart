import 'package:flutter/material.dart';

import 'page_2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int screenView = 0;
  String page = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Saya dipanggil lagi sebanyak $screenView"),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                final data = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Page2(),
                  ),
                );
                setState(() {
                  screenView++;
                  if (data != null) {
                    page = data;
                  } else {
                    page = "";
                  }
                });
              },
              child: const Text("Navigation to Page 2"),
            ),
            const SizedBox(height: 20),
            Visibility(
              visible: page.isNotEmpty,
              child: Text("Saya kembali dari $page"),
            ),

          ],
        ),
      ),
    );
  }
}
