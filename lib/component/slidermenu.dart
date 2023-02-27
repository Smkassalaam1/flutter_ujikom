import 'package:flutter/material.dart';

class InfoSlider extends StatelessWidget {
  final String title;
  final List<String> infoItems;
  final List<String> titleItems;

  const InfoSlider(
      {super.key,
      required this.title,
      required this.titleItems,
      required this.infoItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: infoItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 250,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 2.0,
                    ),
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(7),
                  ),
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(7),
                        ),
                        margin: const EdgeInsets.only(bottom: 10),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              titleItems[index],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              infoItems[index],
                              maxLines: 3,
                              style: const TextStyle(
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
