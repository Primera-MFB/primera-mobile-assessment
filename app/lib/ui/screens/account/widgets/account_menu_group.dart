import 'package:app/ui/screens/account/account.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class AccountMenuGroup extends StatelessWidget {
  const AccountMenuGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Column(
        children: [
          MenuItem(
            itemName: 'My Profile',
            iconData: IconlyBold.profile,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Account Verification',
            iconData: Icons.verified_user,
            trailing: const StatusBadge(
              status: VerificationStatus.success,
              statusName: 'Verified',
            ),
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Notification',
            iconData: Icons.notifications,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Upgrade Account',
            iconData: Icons.trending_up,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
        ],
      ),
    );
  }
}
