import 'package:flutter/material.dart';

class CustomListActionButtons extends StatelessWidget {
  const CustomListActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "About",
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.lightBlue.shade400,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
              child: Text("Work",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          const Text("Activity",
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
