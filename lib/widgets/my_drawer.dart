import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            accountName: const Text('TEXT TRANSLATOR'),
            accountEmail: const Text('admin@malvernbright.co.zw')),
        MaterialButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {},
          shape: const StadiumBorder(),
          child: const Text('ABOUT'),
        )
      ],
    ));
  }
}
