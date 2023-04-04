import 'package:music/BO/EventBo.dart';
import 'package:music/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:music/Helpers/NavigationHelper/Routes.dart';
import 'package:music/Pages/EventScreen/EventScreenModel.dart';

// Create a class named HomeScreenVM which extends the class HomeScreenModel

class EventScreenVM extends EventScreenModel {

  /* Declare a Constructor navigatetonextpage with required parameter index */
  void navigateToNextPage({required int index}) {

    // Add the navigatorpush to navigationstream with the pageconfig
    navigationStream.add(NavigatorPush(
        pageConfig: Pages.eventDetailScreenConfig,
        data: collectionOfBo[index]));
  }

  /* Create a Constructor */
  EventScreenVM() {
    /* declare the set method */
    setcollectionOfBo(collectionOfBo: [
      Bo(
          date: "14",
          month: "JUNE",
          bookmark: true,
          title: "International Band Music Concet",
          personOne: "kavin",
          personTwo: "dhanuj",
          address: "36 Guild Street London, UK",
          image: "lib/Helpers/Resources/Assets/Images/hand.png",
          location: "Dada Convention Center",
          organizer: "Ashfak selvan",
          aboutEvent:
              "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More..."),
      Bo(
          date: "15",
          month: "JUNE",
          bookmark: false,
          title: "International Band Saregama Concet",
          personOne: "navin",
          personTwo: "dhanush",
          address: "Radius Gallery Santa Cruz, CA",
          image: "lib/Helpers/Resources/Assets/Images/foot.png",
          location: "Gala Convention Center",
          organizer: "Ashfak sayem",
          aboutEvent:
              "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...")
    ]);

    //  Assign the value to chips 
    chips = ["Sports", "Music", "Food", "Art"];
  }
}
