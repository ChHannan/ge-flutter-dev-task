import 'package:flutter/material.dart';

class ExpansionCard extends StatelessWidget {
  final String title;
  final Widget body;

  const ExpansionCard({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 0,
      children: [
        ExpansionPanel(
          backgroundColor: Colors.transparent,
          headerBuilder: (_, __) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          body: body,
        ),
      ],
    );
  }
}
