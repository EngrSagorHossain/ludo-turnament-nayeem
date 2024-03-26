import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {
  Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = Rx([
    ViewhierarchyItemModel(
        successText: "Success".obs,
        sundayText: "Sunday".obs,
        timeText: "10.22 PM".obs),
    ViewhierarchyItemModel(
        successText: "Ludo 356 is one of the \nbest game in Bangladesh.".obs, 
        sundayText: "Yesterday".obs,
        timeText: "10.22 PM".obs),
    ViewhierarchyItemModel(
        successText: "Success is the key of the".obs,
        sundayText: "Sunday".obs,
        timeText: "10.22 PM".obs),
    ViewhierarchyItemModel(
        successText: "Ludo 356 is one of the \nbest game in Bangladesh.".obs,
        sundayText: "Yesterday".obs,
        timeText: "10.22 PM".obs)
  ]);
}
