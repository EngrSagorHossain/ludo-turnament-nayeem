import 'lockten_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [tournament_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TournamentFourModel {
  Rx<List<LocktenItemModel>> locktenItemList =
      Rx(List.generate(10, (index) => LocktenItemModel()));
}
