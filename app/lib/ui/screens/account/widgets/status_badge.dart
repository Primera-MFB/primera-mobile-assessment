import 'package:app/ui/shared/styles.dart';
import 'package:flutter/material.dart';

enum VerificationStatus { success, info, error }

class StatusBadge extends StatelessWidget {
  final String statusName;
  final VerificationStatus status;
  const StatusBadge({
    super.key,
    required this.statusName,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? kSuccessGreenColor
            : kAccentGreenColor100,
        borderRadius: const BorderRadius.all(Radius.circular(14.0)),
      ),
      child: Text(
        statusName,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).brightness == Brightness.light
                  ? kNeutralBgColor
                  : kDarkModeTextColor,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
