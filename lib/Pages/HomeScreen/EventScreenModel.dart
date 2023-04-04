import 'package:mobx/mobx.dart';
import 'package:music/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';

import '../../BO/EventBo.dart';


part 'EventScreenModel.g.dart';

// Create a EventDetailScreenModel
class EventScreenModel = _EventScreenModelBase
    with _$EventScreenModel, NavigationMixin;

abstract class _EventScreenModelBase with Store {
  // Declare an observable List named collectioOfBo and assign empty value
  @observable
  List<Bo> collectionOfBo = [];

  /* Create a setmethod and initialize the required parameter */
  @action
  setcollectionOfBo({required List<Bo> collectionOfBo}) {
    collectionOfBo = [];
    this.collectionOfBo = collectionOfBo;
  }

  // Declare a List named chips and assign empty value
  List<String> chips = [];
}
