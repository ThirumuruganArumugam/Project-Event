import 'package:flutter/material.dart';
import 'package:music/Helpers/NavigationHelper/Routes.dart';

import 'Helpers/NavigationHelper/NavigationHelper.dart';

// Create a statefulwidget named Myapp
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      // Assign the value of constructor AppRoute and pass the value to parameter   
      onGenerateRoute:
          AppRoute(initialPage: Pages.eventScreenConfig, initialPageData: null)
              .onGenerateRoute,
    );
  }
}
