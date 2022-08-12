import 'package:flutter/material.dart';
import 'action_card.dart';

class ActionsRow extends StatefulWidget {
  const ActionsRow({
    Key? key,
  }) : super(key: key);

  @override
  State<ActionsRow> createState() => _ActionsRowState();
}

class _ActionsRowState extends State<ActionsRow> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ActionCard(
          title: 'Your address',
          icon: Icons.dashboard,
          isSelected: _selectedIndex == 0,
          onTap: () => _updateIndex(0),
        ),
        ActionCard(
          title: 'Aliases',
          icon: Icons.person,
          isSelected: _selectedIndex == 1,
          onTap: () => _updateIndex(1),
        ),
        ActionCard(
          title: 'Balance',
          icon: Icons.toggle_on,
          isSelected: _selectedIndex == 2,
          onTap: () => _updateIndex(2),
        ),
        ActionCard(
          title: 'Resize',
          icon: Icons.close_fullscreen_sharp,
          isSelected: _selectedIndex == 3,
          onTap: () => _updateIndex(3),
        ),
      ],
    );
  }
}
