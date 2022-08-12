import 'package:flutter/material.dart';

class CustomBottomNavigationItem {
  CustomBottomNavigationItem({
    required this.selectedIconData,
    required this.unselectedIconData,
  });

  IconData selectedIconData;
  IconData unselectedIconData;
}

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({
    Key? key,
    required this.items,
    required this.onTap,
    required this.onActionTap,
    this.color,
    this.height = kToolbarHeight,
    this.iconSize = 24.0,
    this.selectedColor,
  }) : super(key: key) {
    assert(items.length == 4);
  }

  final List<CustomBottomNavigationItem> items;
  final double height;
  final double iconSize;
  final Color? color;
  final Color? selectedColor;
  final ValueChanged<int> onTap;
  final VoidCallback onActionTap;

  @override
  State<StatefulWidget> createState() => CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTap(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: InkWell(
          onTap: () => widget.onActionTap(),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(
                Icons.add,
                color: Theme.of(context).primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required CustomBottomNavigationItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    Color? color =
        _selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Icon(
              _selectedIndex == index
                  ? item.selectedIconData
                  : item.unselectedIconData,
              color: color,
              size: widget.iconSize,
            ),
          ),
        ),
      ),
    );
  }
}