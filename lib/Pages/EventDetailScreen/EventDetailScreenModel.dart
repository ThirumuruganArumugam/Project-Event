import 'package:mobx/mobx.dart';
import 'package:music/BO/EventBo.dart';
import 'package:music/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';

part 'EventDetailScreenModel.g.dart';

// Create a model class named EventDetailScreenModel
// ignore: library_private_types_in_public_api
class EventDetailScreenModel = _EventDetailScreenModelBase
    with _$EventDetailScreenModel, NavigationMixin;

// Create an abstract class named _EventDetailScreenModelBase with a mixin named store
abstract class _EventDetailScreenModelBase with Store {

  // Create an instance for the class Bo
  late Bo instance;
}