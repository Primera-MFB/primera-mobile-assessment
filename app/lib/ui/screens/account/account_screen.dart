import 'package:app/ui/screens/account/account.dart';
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

  List<Widget> _widgetMenuList() {
    return [
      const MenuGroup(groupTitle: 'Account', child: AccountMenuGroup()),
      const MenuGroup(groupTitle: 'Security', child: SecurityMenuGroup()),
      const MenuGroup(groupTitle: 'Finance', child: FinanceMenuGroup()),
      const MenuGroup(groupTitle: 'Theme', child: ThemeMenuGroup()),
      const MenuGroup(groupTitle: 'Others', child: OthersMenuGroup()),
      const SizedBox(height: 24.0),
      const CheckUpdate()
    ];
  }

  List<Widget> get widgetMenuList => _widgetMenuList();
}
