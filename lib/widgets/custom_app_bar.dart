import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.notifications_outlined,
          ),
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
              'https://thumbs.dreamstime.com/b/pixel-avatar-male-cartoon-retro-game-style-pixel-avatar-male-cartoon-retro-game-style-set-99715018.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
