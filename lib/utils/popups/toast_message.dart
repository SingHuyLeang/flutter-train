import 'package:api_train/common/styles/typhographies.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastMessage {
  // info
  info({required String title, String? description, IconData? icon}) {
    toastification.show(
      type: ToastificationType.info,
      style: ToastificationStyle.flat,
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
  success({required String title, String? description, IconData? icon}) {
    toastification.show(
      type: ToastificationType.success,
      style: ToastificationStyle.flat,
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
  warning({required String title, String? description, IconData? icon}) {
    toastification.show(
      type: ToastificationType.warning,
      style: ToastificationStyle.flat,
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
  error({required String title, String? description, IconData? icon}) {
    toastification.show(
      type: ToastificationType.error,
      style: ToastificationStyle.flat,
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
