
import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService{
  static String get bannerAdUnitId{
   
     return 'ca-app-pub-3940256099942544/6300978111';
   
   
  }

  static String ? get interstitiaAdUnitId{
    return 'ca-app-pub-3940256099942544/8691691433';
  }
  static String ? get rewardedAdUnitId{
    return 'ca-app-pub-3940256099942544/5224354917';
  }

  static final BannerAdListener bannerAdListener = BannerAdListener(
    onAdLoaded: (ad) => print("loaded"),
    onAdFailedToLoad:(ad,error){
      ad.dispose();
      print("Ad failed to load: $error");
    },
  );
}