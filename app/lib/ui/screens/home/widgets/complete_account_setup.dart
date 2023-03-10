import 'package:app/ui/shared/size_config.dart';
import 'package:app/ui/shared/styles.dart';
import 'package:flutter/material.dart';

class CompleteAccountSetup extends StatelessWidget {
  final String title;
  final String desc;
  final IconData icon;
  final ImageProvider<Object> image;
  final void Function()? onTap;

  const CompleteAccountSetup({
    super.key,
    required this.title,
    required this.desc,
    required this.image,
    this.icon = Icons.arrow_forward,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: kTextColor100,
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
            color: Theme.of(context).scaffoldBackgroundColor, width: 2.0),
      ),
      child: ListTile(
        onTap: onTap,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: kDarkModeTextColor,
                  ),
            ),
            Icon(
              Icons.arrow_forward,
              color: kDarkModeTextColor,
              size: SizeConfig.safeBlockHorizontal! * 4,
            )
          ],
        ),
        subtitle: Text(
          desc,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: kDarkModeTextColor,
              ),
        ),
        trailing: Image(image: image),
      ),
    );
  }
}
