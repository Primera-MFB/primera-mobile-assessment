import 'package:app/ui/screens/home/home.dart';
import 'package:app/ui/shared/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const HomeWrapper();
  }
}
