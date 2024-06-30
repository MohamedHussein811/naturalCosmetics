import 'package:get/get.dart';

class TreatmentController extends GetxController {
  var isLoading = false.obs;
  var responseMessage = ''.obs;
  var errorMessage = ''.obs;
  var isButtonVisible = true.obs;

  void setLoading(bool value) {
    isLoading.value = value;
  }

  void setResponseMessage(String message) {
    responseMessage.value = message;
  }

  void setErrorMessage(String message) {
    errorMessage.value = message;
  }

  void setButtonVisible(bool value) {
    isButtonVisible.value = value;
  }

  @override
  void onClose() {
    // Reset the state when the controller is closed
    isLoading.value = false;
    responseMessage.value = '';
    errorMessage.value = '';
    isButtonVisible.value = true;
    super.onClose();
  }
}
