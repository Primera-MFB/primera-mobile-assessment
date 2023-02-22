import 'package:app/ui/screens/account/account.dart';
import 'package:app/ui/shared/cubit/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeMenuGroup extends StatelessWidget {
  const ThemeMenuGroup({super.key});

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
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MenuItem(
                itemName: context.read<ThemeCubit>().themeModeName,
                iconData: Icons.phonelink_setup,
                trailing: Switch.adaptive(
                    key: const ValueKey('theme-switch'),
                    activeColor: Theme.of(context).primaryColor,
                    value: context.read<ThemeCubit>().isDarkMode,
                    onChanged: (value) => context
                        .read<ThemeCubit>()
                        .switchTheme(value ? ThemeDark() : ThemeLight())),
              );
            },
          )
        ],
      ),
    );
  }
}
