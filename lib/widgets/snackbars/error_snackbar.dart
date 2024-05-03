import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getconnect_test/utils/tokens_all.dart';
import 'package:getconnect_test/utils/tokens_colors.dart';

GetSnackBar errorSnackbar(String title, String message) => GetSnackBar(
    titleText: Text(title),
    messageText: Text(message),
    snackPosition: SnackPosition.TOP,
    isDismissible: true,
    borderRadius: TokensAll.borderRadius16,
    backgroundColor: Colors.white,
    margin: const EdgeInsets.all(TokensAll.spacingInset16),
    duration: const Duration(seconds: 4),
    padding: const EdgeInsets.only(
      left: TokensAll.spacingInset24,
      right: TokensAll.spacingInset16,
      top: TokensAll.spacingInset16,
      bottom: TokensAll.spacingInset16,
    ),
    shouldIconPulse: false,
    boxShadows: const [
      BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 0.5),
          spreadRadius: 2,
          blurRadius: 4)
    ],
    icon: const Icon(
      FluentIcons.error_circle_16_filled,
      color: TokensColors.colorRed,
      size: TokensAll.iconSize32,
    ));
