import 'package:music/BO/EventBo.dart';
import 'package:music/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:music/Pages/EventDetailScreen/EventDetailScreenModel.dart';

// Create a class named EventDetailScreenScreenVM wich extends the class EventDetailScreenModel
class EventDetailScreenVM extends EventDetailScreenModel {
  /* Create a method back */
  void back() {
    // Add the navigator pop method to navigation stream.
    navigationStream.add(NavigatorPop());
  }

  /* Create a Constructor named EventDetailScreenVM and required parameter Bo data */
  EventDetailScreenVM({required Bo data}) {
    // Declare the instance value is equal to data
    instance=data;
  }
}
