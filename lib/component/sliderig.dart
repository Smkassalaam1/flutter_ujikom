import 'package:flutter/material.dart';

class InstagramStorySlider extends StatelessWidget {
  final List<String> avatarUrls;

  InstagramStorySlider({required this.avatarUrls});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300]!,
            width: 2.0,
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: avatarUrls.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage(avatarUrls[index]),
                backgroundColor: Colors.grey[300],
              ),
            );
          },
        ),
      ),
    );
  }
}
