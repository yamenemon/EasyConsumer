import 'package:easy_consumer_flutter/data_provider/api_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashController extends ChangeNotifier {
  final apiClient = ApiClient();
  String version = "";
  String versionCode = "";
  SplashController() {
    checkAppVersion();
  }

  Future<void> checkAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    version = packageInfo.version;
    versionCode = packageInfo.buildNumber;
    debugPrint("App version is " + version.toString());
    debugPrint("App version Code is " + versionCode.toString());
    final map = Map<String, dynamic>();
    map['app_ios_version'] = true;
    notifyListeners();
    //TODO: Version appi calling here -

    // try {
    //   final result =
    //       await apiClient.request(AppUrl.CHECK_VERSION_URL, Method.POST, map);

    //   if (result != null) {
    //     if (result is d.Response) {
    //       var data = CheckVersionResponse.fromJson(result.data);
    //       if (data.code == 200) {
    //         if (data.data != null) {
    //           checkversionData.value = data.data!;
    //           if (checkversionData.value.appVersion
    //                   .toString()
    //                   .isVersionGreaterThan(version) ||
    //               int.tryParse(checkversionData.value.versionCode.toString())! >
    //                   int.tryParse(versionCode.toString())!) {
    //             debugPrint("true");
    //             forceDialog();
    //           } else {
    //             debugPrint("false");
    //           }
    //           debugPrint(
    //               "APIVERSION IS  ::: ${checkversionData.value.appVersion} and API VERSION CODE IS :::  ${checkversionData.value.versionCode}");
    //         }
    //       }
    //     }
    //   }
    // } on Exception catch (e) {
    //   e.printError();
    // }
  }
}
