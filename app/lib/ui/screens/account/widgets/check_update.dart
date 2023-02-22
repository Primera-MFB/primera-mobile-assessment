import 'package:app/ui/shared/styles.dart';
import 'package:flutter/material.dart';

class CheckUpdate extends StatefulWidget {
  const CheckUpdate({Key? key}) : super(key: key);

  @override
  State<CheckUpdate> createState() => _CheckUpdateState();
}

class _CheckUpdateState extends State<CheckUpdate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: Theme.of(context).brightness == Brightness.light
                  ? kPrimaryColor100
                  : kDarkModePrimaryColor100,
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? kPrimaryColor10
                  : kDarkModeBgColor2,
            ),
            onPressed: () {},
            child: const Text('Check for update')), //kDarkModeBgColor2
        const SizedBox(height: 24.0),
      ]),
    );
  }
}
