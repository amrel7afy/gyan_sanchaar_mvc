import 'package:gyan_sanchaar_mvc_app/core/app_export.dart';
import 'package:gyan_sanchaar_mvc_app/core/utils/pref_utils.dart';
import 'package:gyan_sanchaar_mvc_app/data/apiClient/api_client.dart';

import '../network/network_info.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
