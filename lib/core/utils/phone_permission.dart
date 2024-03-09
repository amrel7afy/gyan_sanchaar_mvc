import 'package:gyan_sanchaar_mvc_app/core/utils/flutter_toast.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> phonePermissonChecker() async {
  if (await Permission.phone.isGranted) {
    return true;
  } else {
    var status = await Permission.phone.request();
    if (status.isGranted ||
        await Permission.phone.serviceStatus.isNotApplicable) {
      return true;
    } else if (status.isDenied) {
      status = await Permission.phone.request();
      if (status.isGranted) {
        return true;
      } else {
        Message_Utils.displayToast("Please Allow Phone Permission");
        return false;
      }
    } else if (status.isPermanentlyDenied) {
      return false;
    }
  }
  return false;
}
