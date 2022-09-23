import 'package:flutter/material.dart';

import '../Styles/app_colors.dart';

void success(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: AppColor.primaryColor,
  ));
}

void error(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: AppColor.red,
  ));
}
