import 'package:app/ui/screens/account/account.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SecurityMenuGroup extends StatelessWidget {
  const SecurityMenuGroup({super.key});

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
            itemName: 'Change Password',
            iconData: Icons.vpn_key,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Change Transaction PIN',
            iconData: Icons.lock,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Biometric & 2FA',
            iconData: Icons.fingerprint,
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
