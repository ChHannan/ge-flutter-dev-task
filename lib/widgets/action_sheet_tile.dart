import 'package:flutter/material.dart';

class ActionSheetTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Color backgroundColor;
  final IconData icon;

  const ActionSheetTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.backgroundColor,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        leading: CircleAvatar(
          radius: 26,
          backgroundColor: backgroundColor.withOpacity(0.2),
          child: Icon(
            icon,
            color: backgroundColor,
            size: 36,
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right_sharp,
          color: Colors.grey,
        ),
      ),
    );
  }
}
