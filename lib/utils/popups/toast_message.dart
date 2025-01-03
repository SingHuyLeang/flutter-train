import 'package:api_train/common/styles/typhographies.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastMessage {
  // info
  static info({required String title, String? description, IconData? icon}) {
    toastification.show(
      type: ToastificationType.info,
      style: ToastificationStyle.fillColored,
      showIcon: icon != null,
      icon: Icon(icon),
      autoCloseDuration: const Duration(milliseconds: 3000),
      title: Text(title, style: typographies.paragraph()),
      description: description != null
          ? Text(description, style: typographies.label())
          : null,
    );
  }

  // success
  static success({required String title, String? description, IconData? icon}) {
    toastification.show(
      type: ToastificationType.success,
      style: ToastificationStyle.fillColored,
      showIcon: icon != null,
      icon: Icon(icon),
      autoCloseDuration: const Duration(milliseconds: 3000),
      title: Text(title, style: typographies.paragraph()),
      description: description != null
          ? Text(description, style: typographies.label())
          : null,
    );
  }

  // warning
  static warning({required String title, String? description, IconData? icon}) {
    toastification.show(
      type: ToastificationType.warning,
      style: ToastificationStyle.fillColored,
      showIcon: icon != null,
      icon: Icon(icon),
      autoCloseDuration: const Duration(milliseconds: 3000),
      title: Text(title, style: typographies.paragraph()),
      description: description != null
          ? Text(description, style: typographies.label())
          : null,
    );
  }

  // error
  static error({required String title, String? description, IconData? icon}) {
    toastification.show(
      type: ToastificationType.error,
      style: ToastificationStyle.fillColored,
      showIcon: icon != null,
      icon: Icon(icon),
      autoCloseDuration: const Duration(milliseconds: 3000),
      title: Text(title, style: typographies.paragraph()),
      description: description != null
          ? Text(description, style: typographies.label())
          : null,
    );
  }
}
