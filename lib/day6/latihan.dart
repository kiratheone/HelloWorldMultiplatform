import 'package:flutter/material.dart';

class LatihanDay6 extends StatelessWidget {
  const LatihanDay6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 340,
          ),
          Container(
            height: 292,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.white),
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/background.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(47))),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100, left: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text("Hi, ",
                        style: TextStyle(color: Colors.white)),
                    Text("David",
                        style: TextStyle(
                            color: Colors.white))
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
              child: Container(
                height: 200,
                padding: const EdgeInsets.symmetric(vertical: 21),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Halo Button"),
                    const Text("Pencet saya",
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                        fixedSize: const Size(240, 50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.abc),
                          SizedBox(width: 10),
                          Text(
                            "Pesan Test Sekarang",
                            style: TextStyle(
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            right: 22,
            top: 86,
            child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                    'assets/avatar_saya.png'))),

        ],
      ),
    );
  }
}
