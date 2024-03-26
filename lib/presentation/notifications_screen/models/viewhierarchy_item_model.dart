import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.successText,
    this.sundayText,
    this.timeText,
    this.id,
  }) {
    successText = successText ?? Rx("Success");
    sundayText = sundayText ?? Rx("Sunday");
    timeText = timeText ?? Rx("10.22 PM");
    id = id ?? Rx("");
  }

  Rx<String>? successText;

  Rx<String>? sundayText;

  Rx<String>? timeText;

  Rx<String>? id;
}
