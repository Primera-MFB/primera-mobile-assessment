import 'package:app/ui/shared/styles.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String itemName;
  final IconData iconData;
  final Color? itemColor;
  final Widget? trailing;
  final void Function()? onTap;

  const MenuItem({
    Key? key,
    required this.itemName,
    required this.iconData,
    this.itemColor,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      title: Text(
        itemName,
        style: itemColor != null
            ? Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w500, color: itemColor)
            : Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w500),
      ),
      leading: Icon(iconData,
          color: itemColor ??
              (Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).primaryColor
                  : kDarkModeTextColor)),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
