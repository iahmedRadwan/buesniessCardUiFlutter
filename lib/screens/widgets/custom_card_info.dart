import 'package:flutter/material.dart';

import 'custom_list_title.dart';

class CustomCardInfo extends StatelessWidget {
  const CustomCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14.0),
                      child: Text(
                        "Software Engineer",
                        style: TextStyle(
                          fontSize: 26,
                          height: 1.3,
                          color: Color.fromRGBO(126, 131, 136, 1),
                          wordSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CustomListTile(
                      titleText: 'Type',
                      subTitleText: 'Senior Emplyee',
                    ),
                    CustomListTile(
                      titleText: 'Joined',
                      subTitleText: 'Sep 2018',
                    ),
                    CustomListTile(
                      titleText: 'Experiance',
                      subTitleText: '4 Years',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    "assets/images/task_image.jpg",
                    height: 225,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
