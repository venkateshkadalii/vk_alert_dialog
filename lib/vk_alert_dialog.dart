library vk_alert_dialog;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vk_alert_dialog/widgets/custom_alert_dialog.dart';

class VKAlertDialog {
  /// Used to display Alert Dialog for success operations.
  static Future successDialog({
    @required BuildContext context,
    @required String title,
    @required String description,
    @required String buttonText,
    @required Widget icon,
  }) {
    assert(context != null, "context is null!!");
    assert(title != null, "Title is null");
    assert(description != null, "description is null");
    assert(buttonText != null, "buttonText is null");

    return showDialog(
      context: context,
      builder: (context) {
        return CustomAlertDialog(
          title: title,
          description: description,
          type: AlertDialogType.SUCCESS,
          buttonText: buttonText,
          icon: icon,
        );
      },
    );
  }

  /// Used to display Alert Dialog for failure operations.
  static Future errorDialog({
    @required BuildContext context,
    @required String title,
    @required String description,
    @required String buttonText,
    Widget icon,
  }) {
    assert(context != null, "context is null!!");
    assert(title != null, "Title is null");
    assert(description != null, "description is null");
    assert(buttonText != null, "buttonText is null");

    return showDialog(
      context: context,
      builder: (context) {
        return CustomAlertDialog(
          title: title,
          description: description,
          type: AlertDialogType.ERROR,
          buttonText: buttonText,
          icon: icon,
        );
      },
    );
  }

  /// Used to display Alert Dialog for info operations.
  static Future infoDialog({
    @required BuildContext context,
    @required String title,
    @required String description,
    @required String buttonText,
    Widget icon,
  }) {
    assert(context != null, "context is null!!");
    assert(title != null, "Title is null");
    assert(description != null, "description is null");
    assert(buttonText != null, "buttonText is null");

    return showDialog(
      context: context,
      builder: (context) {
        return CustomAlertDialog(
          title: title,
          description: description,
          type: AlertDialogType.INFO,
          buttonText: buttonText,
          icon: icon,
        );
      },
    );
  }
}
