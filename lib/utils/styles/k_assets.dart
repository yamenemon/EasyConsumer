enum KAssetName {
  easy_splash_logo,
  login_vector,
  facebook,
  google,
  apple,
  easy_login_logo,
  close_bottom,
}

extension AssetsExtention on KAssetName {
  String get imagePath {
    String _rootPath = 'assets';
    String _svgDir = '$_rootPath/svg';
    String _imageDir = '$_rootPath/images';

    switch (this) {
      case KAssetName.easy_splash_logo:
        return "$_svgDir/easy_splash_logo.svg";
      case KAssetName.login_vector:
        return "$_svgDir/login_vector.svg";
      case KAssetName.facebook:
        return "$_svgDir/facebook.svg";
      case KAssetName.google:
        return "$_svgDir/google.svg";
      case KAssetName.apple:
        return "$_svgDir/apple.svg";
      case KAssetName.easy_login_logo:
        return "$_svgDir/easy_login_logo.svg";

      default:
        return "";
    }
  }
}
