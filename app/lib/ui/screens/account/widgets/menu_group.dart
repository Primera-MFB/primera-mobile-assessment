import 'package:flutter/material.dart';

class MenuGroup extends StatelessWidget {
  final String groupTitle;
  final Widget child;
  const MenuGroup({
    super.key,
    required this.child,
    required this.groupTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            groupTitle,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.left,
          ),
        ),
        child
      ],
    );
  }
}
