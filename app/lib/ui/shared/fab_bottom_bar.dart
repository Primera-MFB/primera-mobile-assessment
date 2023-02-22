import 'package:flutter/material.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem({required this.iconData, required this.text});
  IconData iconData;
  String text;
}

class FABBottomAppBar extends StatefulWidget {
  final int currentIndex;
  final List<FABBottomAppBarItem> items;
  final String? centerItemText;
  final double height;
  final double iconSize;
  final Color? color;
  final Color? selectedColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int> onTabSelected;

  FABBottomAppBar({
    super.key,
    required this.items,
    this.centerItemText,
    this.height = 64.0,
    this.iconSize = 24.0,
    this.color,
    this.selectedColor,
    this.notchedShape,
    required this.onTabSelected,
    required this.currentIndex,
  }) {
    assert(items.length == 4 || items.length == 5);
  }

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  _updateIndex(int index) {
    widget.onTabSelected(index);
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

    return BottomAppBar(
      shape: widget.notchedShape,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    Color? color =
        index == widget.currentIndex ? widget.selectedColor : widget.color;

    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(item.iconData, color: color, size: widget.iconSize),
                Text(
                  item.text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: color),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
