import 'package:flutter/material.dart';

class AppImages extends AssetImage {
  const AppImages(super.assetName);
  static const String _assetsPath = 'assets/Images';
  static const String _iconPath = 'assets/IconsSvg';
//PNG images
  static const String kashan = '$_assetsPath/kashan.jpg';
  static const String Baby = '$_assetsPath/Baby.png';
  static const String Hoodie = '$_assetsPath/Hoodie.png';
  static const String Jacket = '$_assetsPath/Jacket.png';
  static const String shoes = '$_assetsPath/shoes.png';
  static const String TV = '$_assetsPath/TV.png';
  static const String watch = '$_assetsPath/watch.png';
  static const String airpods = '$_assetsPath/airpods.png';
  static const String profilepicture = '$_assetsPath/profilepicture.jpg';

//Svg images
  static const String uploadLogo = '$_iconPath/UploadLogo.svg';
  static const String cash = '$_iconPath/Cash.svg';
  static const String creditCard = '$_iconPath/CreditCard.svg';
  static const String paypal = '$_iconPath/Paypal.svg';
  static const String help = '$_iconPath/help.svg';
  static const String message = '$_iconPath/message.svg';
  static const String setting = '$_iconPath/setting.svg';
  static const String profile = '$_iconPath/profile.svg';
  static const String share = '$_iconPath/share.svg';
  static const String arrow = '$_iconPath/arrow.svg';

  static const String notification = '$_iconPath/notification.svg';
  static const String language = '$_iconPath/language.svg';
  static const String privacy = '$_iconPath/privacy.svg';
  static const String center = '$_iconPath/center.svg';
  static const String about = '$_iconPath/about.svg';
}
