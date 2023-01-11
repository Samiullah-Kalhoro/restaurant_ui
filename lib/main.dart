import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:restaurant_ui/screens/homepage.dart';
import 'package:restaurant_ui/screens/settings.dart';

import 'controllers/nav_controller.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider<NavigationController>(
        create: (_) => NavigationController(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xff252836),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
            ),
      ),
      home: Navigator(
          pages: getPages(context),
          onPopPage: (route, result) {
            bool popStatus = route.didPop(result);
            if (popStatus == true) {
              Provider.of<NavigationController>(context, listen: false)
                  .changeScreen('/');
            }
            return popStatus;
          }),
    );
  }
}

List<Page> getPages(context) {
  NavigationController navigationController =
      Provider.of<NavigationController>(context);
  List<Page> pageList = [];
  pageList.add(const MaterialPage(child: HomePage()));

  switch (navigationController.screenName) {
    case '/settings':
      pageList.add(const MaterialPage(child: SettingsScreen()));
      break;
  }
  return pageList;
}
