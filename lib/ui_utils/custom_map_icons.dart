import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_2/assets/app_images.dart';

class CustomMapIcons{
  CustomMapIcons._();
  static final _sharedInstance = CustomMapIcons._();
  factory CustomMapIcons() => _sharedInstance;
  late final BitmapDescriptor shipIcon;

  Future<void> loadIcons()async{
    shipIcon = await BitmapDescriptor.asset(const ImageConfiguration(size: Size(48, 48)), AppImages.shipIcon);
  }
}