import 'levelone_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [tournament_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TournamentThreeModel {
  Rx<List<LeveloneItemModel>> leveloneItemList =
      Rx(List.generate(10, (index) => LeveloneItemModel()));
}
