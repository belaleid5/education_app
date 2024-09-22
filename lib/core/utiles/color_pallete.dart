import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kTextColor = Color(0xFF0D1333);
const kBlueColor = Color(0xFF6E8AFA);
const kBestSellerColor = Color(0xFF49CC96);
const kBackgroundColor = Color(0xFFF5F4EF);

// Text Styles

ScreenUtil screenUtil = ScreenUtil();

var kHeadingTextStyle = TextStyle(
  fontSize: screenUtil.setSp(28),
  color: kTextColor,
  fontWeight: FontWeight.bold,
);

var kSubHeadingTextStyle = TextStyle(
  fontSize: screenUtil.setSp(24),
  color: const Color(0xFF616880),
height: 2
);
var kTitleTextStyle = TextStyle(
  fontSize: screenUtil.setSp(17),
  color: kTextColor,
fontWeight: FontWeight.bold,
);
var kSubTitleTextStyle = TextStyle(
  fontSize: screenUtil.setSp(18),
  color: kTextColor,
);