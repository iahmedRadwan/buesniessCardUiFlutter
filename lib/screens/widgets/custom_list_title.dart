import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.titleText,
    required this.subTitleText,
  });

  final String titleText;
  final String subTitleText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 0,
      dense: true,
      minTileHeight: 0,
      minVerticalPadding: 4,
      title: Text(
        titleText,
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
      subtitle: Text(
        subTitleText,
        style: const TextStyle(
            color: Color.fromRGBO(126, 131, 136, 1),
            fontSize: 14,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
