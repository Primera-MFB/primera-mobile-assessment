import 'package:app/ui/screens/account/account.dart';
import 'package:app/ui/shared/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class OthersMenuGroup extends StatelessWidget {
  const OthersMenuGroup({super.key});

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
            itemName: 'Refer & Earn',
            iconData: Icons.people,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Terms & Conditions',
            iconData: Icons.file_open_sharp,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Statement of Account',
            iconData: IconlyBold.document,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Privacy Policy',
            iconData: Icons.privacy_tip,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Log Out',
            iconData: Icons.logout,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Delete Account',
            itemColor: kAccentRedColor100,
            iconData: Icons.delete_forever,
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
