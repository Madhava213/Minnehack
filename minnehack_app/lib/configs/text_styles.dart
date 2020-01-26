import 'package:flutter/material.dart';

import 'AppColors.dart';

class Style {
  static final baseTextStyle = const TextStyle(fontFamily: 'Roboto');
  static final smallTextStyle = commonTextStyle.copyWith(
    fontSize: 9.0,
  );
  static final commonTextStyle = baseTextStyle.copyWith(
      color: AppColors.blue,
      fontSize: 14.0,
      fontWeight: FontWeight.w400);
  static final titleTextStyle = baseTextStyle.copyWith(
      color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600);
  static final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.w400);
}
