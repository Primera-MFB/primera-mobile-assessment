import 'package:app/ui/shared/styles.dart';
import 'package:flutter/material.dart';

class CustomIconTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonTextTitle;
  final IconData iconData;
  final Color iconColor;
  final bool iconTransfrom;
  final bool iconHasContainer;
  final double? transformAngle;
  final MainAxisAlignment mainAxisAlignment;
  final Color backgroundColor;
  final double sizedBoxSpace;
  final double? elevation;
  final Color? textColor;

  CustomIconTextButton({
    super.key,
    required this.onPressed,
    required this.buttonTextTitle,
    required this.iconData,
    required this.iconColor,
    required this.backgroundColor,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.sizedBoxSpace = 0,
    this.iconTransfrom = false,
    this.iconHasContainer = false,
    this.transformAngle,
    this.elevation = 0,
    this.textColor = kNeutralColor,
  }) {
    if (iconTransfrom == true) {
      assert(transformAngle != null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          iconHasContainer
              ? Container(
                  height: 24,
                  width: 24,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.light
                        ? kPrimaryColor10
                        : kPrimaryColor20,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: iconTransfrom
                      ? Transform.rotate(
                          angle: transformAngle ?? 45.0,
                          child: Icon(iconData, color: iconColor, size: 16),
                        )
                      : Icon(
                          iconData,
                          color: iconColor,
                          size: 16,
                        ),
                )
              : (iconTransfrom
                  ? Transform.rotate(
                      angle: transformAngle ?? 45.0,
                      child: Icon(iconData, color: iconColor),
                    )
                  : Icon(iconData, color: iconColor)),
          SizedBox(width: sizedBoxSpace),
          Text(
            buttonTextTitle,
            style: kLabelLargeText.copyWith(
                fontWeight: FontWeight.w500, color: textColor),
          )
        ],
      ),
    );
  }
}
