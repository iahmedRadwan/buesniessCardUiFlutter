import 'package:flutter/material.dart';

import 'widgets/custom_card_info.dart';
import 'widgets/custom_list_action_buttons.dart';

class SoftwareCardInfo extends StatelessWidget {
  const SoftwareCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: SafeArea(
          child: Column(
        children: [
          CustomCardInfo(),
          CustomListActionButtons(),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomAchiveCard(
                            numericalData: '17',
                            textData: 'Projects\nDone',
                          ),
                        ),
                        Expanded(
                            child: CustomAchiveCard(
                          numericalData: '92%',
                          textData: 'Success\nRate',
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: CustomAchiveCard(
                          numericalData: '5',
                          textData: 'teams',
                        )),
                        Expanded(
                            child: CustomAchiveCard(
                          numericalData: '243',
                          textData: 'Clients\nReport',
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class CustomAchiveCard extends StatelessWidget {
  const CustomAchiveCard({
    super.key,
    required this.numericalData,
    required this.textData,
  });
  final String numericalData;
  final String textData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numericalData,
              style: const TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(126, 131, 136, 1)),
            ),
            Text(
              textData,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
