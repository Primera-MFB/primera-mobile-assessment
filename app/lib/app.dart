import 'package:app/app_widget.dart';
import 'package:app/ui/router/router.gr.dart';
import 'package:app/ui/shared/cubit/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
      ],
      child: AppWidget(
        appRouter: _appRouter,
      ),
    );
  }
}
