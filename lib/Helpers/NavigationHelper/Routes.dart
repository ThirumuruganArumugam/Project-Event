import 'package:music/Pages/EventDetailScreen/EventDetailScreen.dart';
import 'package:music/Pages/HomeScreen/EventScreen.dart';

import 'NavigationHelper.dart';

// ignore: constant_identifier_names
// Create a enum named as Routes
enum Routes { EventScreen, EventDetailScreen }

// Create a class named Pages
class Pages {
  Object? data;
  // Create an instance for the class Pageconfig named as EventScreenConfig
  // ignore: non_constant_identifier_names
  static final PageConfig eventScreenConfig =
      PageConfig(route: Routes.EventScreen, build: (_) => const EventScreen());

  // Create an instance for the class Pageconfig named as EvetnDetailScreenConfig
  // ignore: non_constant_identifier_names
  static final PageConfig eventDetailScreenConfig = PageConfig(
    route: Routes.EventDetailScreen,
    build: (_) => EventDetailScreen(
      data: eventDetailScreenConfig.data,
    ),
  );
}
