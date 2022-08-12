import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  final List<Widget> tabs;

  const CustomTabBar({
    Key? key,
    required this.tabController,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: LineTabIndicator(
        color: Theme.of(context).primaryColor,
        weight: 4,
      ),
      isScrollable: true,
      labelColor: Colors.black,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      labelPadding: const EdgeInsets.only(right: 24),
      unselectedLabelColor: Colors.grey,
      controller: tabController,
      tabs: tabs,
    );
  }
}

class LineTabIndicator extends Decoration {
  final BoxPainter _painter;

  LineTabIndicator({
    required Color color,
    required double weight,
  }) : _painter = _LinePainter(color, weight);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _LinePainter extends BoxPainter {
  final Paint _paint;

  _LinePainter(Color color, double weight)
      : _paint = Paint()
          ..color = color
          ..strokeCap = StrokeCap.round
          ..strokeWidth = weight
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final height = cfg.size?.height ?? 0;
    final width = cfg.size?.width ?? 0;
    final startingPoint = offset + Offset(2, height);
    final endingPoint = offset + Offset(width * 0.3, height);
    canvas.drawLine(startingPoint, endingPoint, _paint);
  }
}
