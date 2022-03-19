import 'package:flutter/material.dart';
import 'package:flutter_theme/src/presentation/core/theme.dart';
import 'package:flutter_theme/src/presentation/home/widgets/home_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme'),
      ),
      endDrawer: const HomeDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Hello World!',
              style: Theme.of(context).largeTitlePrimaryTextStyle,
            ),
            Text(
              'Hello World!',
              style: Theme.of(context).largeTitleSecondaryTextStyle,
            ),
            Text(
              'Hello World!',
              style: Theme.of(context).largeTitleTertiaryTextStyle,
            ),
            Text(
              'Hello World!',
              style: Theme.of(context).mediumTitlePrimaryTextStyle,
            ),
            Text(
              'Hello World!',
              style: Theme.of(context).mediumTitleSecondaryTextStyle,
            ),
            Text(
              'Hello World!',
              style: Theme.of(context).mediumTitleTertiaryTextStyle,
            ),
            Text(
              'Hello World!',
              style: Theme.of(context).smallTitlePrimaryTextStyle,
            ),
            Text(
              'Hello World!',
              style: Theme.of(context).smallTitleSecondaryTextStyle,
            ),
            Text(
              'Hello World!',
              style: Theme.of(context).smallTitleTertiaryTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
