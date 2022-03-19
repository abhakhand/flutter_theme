import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_theme/src/application/theme/theme_cubit.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key? key,
  }) : super(key: key);

  void toggleTheme(BuildContext context, ThemeMode mode) {
    context.read<ThemeCubit>().toggleTheme(mode);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ExpansionTile(
              title: const Text('Theme'),
              leading: const Icon(Icons.palette),
              children: [
                RadioListTile<ThemeMode>(
                  dense: true,
                  title: const Text('Light'),
                  value: ThemeMode.light,
                  groupValue: context.watch<ThemeCubit>().state,
                  onChanged: (v) {
                    toggleTheme(context, v!);
                  },
                ),
                RadioListTile<ThemeMode>(
                  dense: true,
                  title: const Text('Dark'),
                  value: ThemeMode.dark,
                  groupValue: context.watch<ThemeCubit>().state,
                  onChanged: (v) {
                    toggleTheme(context, v!);
                  },
                ),
                RadioListTile<ThemeMode>(
                  dense: true,
                  title: const Text('System'),
                  value: ThemeMode.system,
                  groupValue: context.watch<ThemeCubit>().state,
                  onChanged: (v) {
                    toggleTheme(context, v!);
                  },
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
