import 'package:app/ui/screens/account/account.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class FinanceMenuGroup extends StatelessWidget {
  const FinanceMenuGroup({super.key});

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
            itemName: 'Cards',
            iconData: Icons.credit_card,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Beneficiaries',
            iconData: IconlyBold.user3,
            onTap: () {
              if (kDebugMode) {
                print('clicked');
              }
            },
          ),
          MenuItem(
            itemName: 'Payments',
            iconData: FeatherIcons.package,
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
