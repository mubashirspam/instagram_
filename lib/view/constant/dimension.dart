import 'package:flutter/material.dart';

class Dimension {
  static void init({
    required BuildContext context,
  }) {
    //instantiate variables here
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    isPotraite = _mediaQueryData.orientation;

    double getScreenwidth() {
      if (screenWidth > 500) {
        return screenWidth / 1.7;
      } else {
        return screenWidth;
      }
    }

    bool getDevice() {
      if (screenWidth > 500 || isPotraite != Orientation.portrait) {
        return true;
      } else {
        return false;
      }
    }

    double getScreenHeight() {
      if (screenHeight > 1000) {
        return 1000;
      } else {
        return screenHeight;
      }
    }

    final _screenWidth = getScreenwidth();

    final _screenHeight = getScreenHeight();

    final _device = getDevice();

    tab = _device;

    pw5 = _screenWidth / 85.6;
    pw8 = _screenWidth / 53.5;
    pw10 = _screenWidth / 42.8;
    pw15 = _screenWidth / 28.54;
    pw20 = _screenWidth / 21.4;
    pw25 = _screenWidth / 17.12;
    pw30 = _screenWidth / 14.27;
    pw35 = _screenWidth / 12.23;
    pw40 = _screenWidth / 10.7;
    pw45 = _screenWidth / 9.51;
    pw50 = _screenWidth / 8.56;
    pw55 = _screenWidth / 7.78;
    pw70 = _screenWidth / 6.11;

    ///width
    w40 = _screenWidth / 10.7;
    w50 = _screenWidth / 8.56;
    w65 = _screenWidth / 6.584;
    w70 = _screenWidth / 6.11;
    w75 = _screenWidth / 5.70;
    w100 = _screenWidth / 4.28;
    w110 = _screenWidth / 3.9;
    w130 = _screenWidth / 3.292;
    w150 = _screenWidth / 2.854;
    w250 = _screenWidth / 1.712;
    halfScreen = _screenWidth / 2;
    flullScreen = _screenWidth;
//heght

    h100 = _screenHeight / 9.26;
    h130 = _screenHeight / 7.12;
    h170 = _screenHeight / 5.45;
    h200 = _screenHeight / 4.63;
    h250 = _screenHeight / 3.704;
    h300 = _screenHeight / 3.08;
    fulscreenHeight = _screenHeight;

// radius fonts

    f5 = _screenWidth / 85.6;
    f8 = _screenWidth / 53.5;
    f10 = _screenWidth / 42.8;
    f12 = _screenWidth / 35.67;
    f15 = _screenWidth / 28.54;
    f20 = _screenWidth / 21.4;
    f25 = _screenWidth / 17.12;
    f30 = _screenWidth / 14.27;
    f35 = _screenWidth / 12.23;
    f40 = _screenWidth / 10.7;
    f45 = _screenWidth / 9.51;
    f50 = _screenWidth / 8.56;
    f55 = _screenWidth / 7.78;

///////////////////////////////
  }

  //declare variables here
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late bool tab;
  static late Orientation isPotraite;

///////////////////////////////////

  static late double pw5;
  static late double pw8;
  static late double pw10;
  static late double pw15;
  static late double pw20;
  static late double pw25;
  static late double pw30;
  static late double pw35;
  static late double pw40;
  static late double pw45;
  static late double pw50;
  static late double pw55;
  static late double pw70;

  ///width
  static late double w40;
  static late double w50;
  static late double w65;
  static late double w70;
  static late double w75;
  static late double w100;
  static late double w110;
  static late double w130;
  static late double w150;
  static late double w250;
  static late double halfScreen;
  static late double flullScreen;
//heght

  static late double h100;
  static late double h130;
  static late double h170;
  static late double h200;
  static late double h250;
  static late double h300;
  static late double fulscreenHeight;

// radius fonts

  static late double f5;
  static late double f8;
  static late double f10;
  static late double f12;
  static late double f15;
  static late double f20;
  static late double f25;
  static late double f30;
  static late double f35;
  static late double f40;
  static late double f45;
  static late double f50;
  static late double f55;
}
