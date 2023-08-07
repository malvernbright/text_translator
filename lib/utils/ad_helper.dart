import 'dart:io' show Platform;

import 'constants.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return Constants.KAdUnitIdAndroidBanner;
    } else if (Platform.isIOS) {
      return Constants.kAdUnitIdiOSBanner;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return Constants.KInterstitialAndroidAdUnitId;
    } else if (Platform.isIOS) {
      return Constants.KInterstitialAdUnitIdiOS;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
