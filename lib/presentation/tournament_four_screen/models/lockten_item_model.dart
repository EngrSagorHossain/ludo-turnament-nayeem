import '../../../core/app_export.dart';

/// This class is used in the [lockten_item_widget] screen.
class LocktenItemModel {
  Rx<String>? lockTen = Rx("Level 1");

  Rx<bool>? isSelected = Rx(false);
}
