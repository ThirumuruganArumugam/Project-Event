import 'package:mobx/mobx.dart';
import 'package:music/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';

import '../../BO/EventBo.dart';


part 'HomeScreenModel.g.dart';

// Create a EventDetailScreenModel
class HomeScreenModel = _HomeScreenModelBase
    with _$HomeScreenModel, NavigationMixin;

abstract class _HomeScreenModelBase with Store {
  // Declare an observable List named collectioOfBo and assign empty value
  @observable
  List<Bo> collectionOfBo = [];

  /* Create a setmethod and initialize the required parameter */
  @action
  void setcollectionOfBo({required List<Bo> collectionOfBo}) {
    collectionOfBo = [];
    this.collectionOfBo = collectionOfBo;
  }

  // Declare a List named chips and assign empty value
  List<String> chips = [];
}
