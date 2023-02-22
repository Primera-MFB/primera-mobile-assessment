import 'package:app/ui/screens/account/account.dart';
import 'package:app/ui/screens/account/widgets/others_menu_group.dart';
import 'package:flutter/material.dart';

class AccountTabScreen extends StatelessWidget {
  const AccountTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: widgetMenuList.length,
          itemBuilder: (context, index) => _widgetMenuList()[index],
        ),
      ),
    );
  }

  List<MenuGroup> _widgetMenuList() {
    return <MenuGroup>[
      const MenuGroup(groupTitle: 'Account', child: AccountMenuGroup()),
      const MenuGroup(groupTitle: 'Security', child: SecurityMenuGroup()),
      const MenuGroup(groupTitle: 'Finance', child: FinanceMenuGroup()),
      const MenuGroup(groupTitle: 'Theme', child: ThemeMenuGroup()),
      const MenuGroup(groupTitle: 'Others', child: OthersMenuGroup()),
    ];
  }

  List<MenuGroup> get widgetMenuList => _widgetMenuList();
}
