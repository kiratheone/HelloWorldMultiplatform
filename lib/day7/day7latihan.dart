import 'package:flutter/material.dart';

class Day7Quiz extends StatefulWidget {
  const Day7Quiz({Key? key}) : super(key: key);

  @override
  State<Day7Quiz> createState() => _Day7QuizState();
}

class _Day7QuizState extends State<Day7Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF13140D),
     body: Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
         children: [
           _helloName(),
           const SizedBox(height: 16),
           _slider()
         ],
       ),
     ),
    );
  }

  Widget _helloName() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Hello Anderson", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 2,
            ),
            Text("Have nice day", style: TextStyle(fontSize: 12, color: Colors.white))
          ],
        ),
        const Spacer(),
        const CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(
                'assets/avatar_saya.png'))
      ],
    );
  }

  Widget _slider() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.white),
          image: const DecorationImage(
            image: AssetImage(
                'assets/background.png'),
            fit: BoxFit.fitWidth,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(14))),
    );
  }
}
