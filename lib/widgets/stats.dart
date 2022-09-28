import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: const [
            Text(
              "Orders",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '10',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 10, 104, 182),
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 50,
          color: const Color.fromARGB(255, 15, 112, 192),
          width: 2,
        ),
        Column(
          children: const [
            Text(
              "Pending",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '1',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 10, 104, 182),
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ],
    );
  }
}
