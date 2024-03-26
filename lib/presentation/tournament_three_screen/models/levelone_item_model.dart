import '../../../core/app_export.dart';

/// This class is used in the [levelone_item_widget] screen.
class LeveloneItemModel {
  Rx<String>? levelOne = Rx("Level 1");

  Rx<bool>? isSelected = Rx(false);
}
