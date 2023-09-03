
import 'package:flutter/material.dart';

class CustomBoxLaps extends StatelessWidget {
  const CustomBoxLaps({
    super.key,
    required this.laps,
  });

  final List laps;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 182, 180, 185),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListView.builder(
        itemCount: laps.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lap n${index + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  '${laps[index]}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
