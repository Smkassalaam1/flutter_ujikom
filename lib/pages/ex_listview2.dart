import 'package:flutter/material.dart';
import '../component/sliderig.dart';

import '../component/slidermenu.dart';

class ExviewIG extends StatelessWidget {
  const ExviewIG({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.4,
                  ),
                ),
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 4),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      'BANDUNG KITA',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InstagramStorySlider(
              avatarUrls: const [
                'https://source.unsplash.com/100x100/?portrait',
                'https://source.unsplash.com/100x100/?portrait',
                'https://source.unsplash.com/100x100/?portrait',
                'https://source.unsplash.com/100x100/?portrait',
                'https://source.unsplash.com/100x100/?portrait',
                'https://source.unsplash.com/100x100/?portrait',
                'https://source.unsplash.com/100x100/?portrait',
                'https://source.unsplash.com/100x100/?portrait',
              ],
            ),
            const InfoSlider(title: 'Bandung 2-0-2-3', titleItems: [
              "Bandung Tidak Bersih",
              "Bandung Jauh dari Jakarta",
              "Bandung Ada dimana?",
              "Ohhh Bandung"
            ], infoItems: [
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
            ]),
            const InfoSlider(title: 'Bandung 2-0-2-4', titleItems: [
              "Bandung Tidak Bersih",
              "Bandung Jauh dari Jakarta",
              "Bandung Ada dimana?",
              "Ohhh Bandung"
            ], infoItems: [
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
            ])
          ],
        ),
      ),
    );
  }
}
