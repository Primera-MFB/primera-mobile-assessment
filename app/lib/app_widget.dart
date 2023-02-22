import 'dart:developer';

import 'package:app/ui/shared/app_theme.dart';
import 'package:app/ui/shared/cubit/theme/theme_cubit.dart';
import 'package:app/ui/shared/styles.dart';
import 'package:app/ui/shared/ui_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatefulWidget {
  final appRouter;
  AppWidget({Key? key, required this.appRouter});

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeCubit, ThemeState>(
      listener: (context, state) {
        log('Theme switched: $state');
      },
      builder: (context, state) {
        return MaterialApp.router(
          title: UIConfig.appName,
          themeMode: context.read<ThemeCubit>().themeMode,
          theme: AppTheme.themeLight,
          darkTheme: AppTheme.themeDark,
          debugShowCheckedModeBanner: false,
          color: kPrimaryColor100,
          routeInformationParser:
              widget.appRouter.defaultRouteParser(includePrefixMatches: true),
          routerDelegate: widget.appRouter.delegate(),
          builder: (context, router) => router!,
        );
      },
    );
  }
}
