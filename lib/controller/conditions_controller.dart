import '../../../API/api_helper.dart';
import 'package:get/get.dart' as getx;
import 'package:natural_cosmetics/Model/conditions_model.dart';

class ConditionsController extends getx.GetxController {
  var conditions = <Condition>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchConditions();
    super.onInit();
  }

  void fetchConditions() async {
    try {
      isLoading(true);
      var fetchedConditions = await ApiService().fetchConditions();
      conditions.assignAll(fetchedConditions);
        } catch (e) {
      // Handle errors
    } finally {
      isLoading(false);
    }
  }
}
