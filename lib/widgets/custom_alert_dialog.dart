import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum AlertDialogType {
  SUCCESS,
  ERROR,
  WARNING,
  INFO,
}

class CustomAlertDialog extends StatelessWidget {
  final AlertDialogType type;
  final String title;
  final String description;
  final Widget icon;
  final String buttonText;
  final TextStyle titleStyle = TextStyle(
      fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);

  CustomAlertDialog({Key key,
    this.title = "Successful",
    @required this.description,
    this.icon,
    this.type = AlertDialogType.INFO,
    this.buttonText = "OK"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Container(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(12.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 10.0),
                icon ??
                    Icon(
                      _getIconForType(type),
                      color: _getColorForType(type),
                      size: 50,
                    ),
                const SizedBox(height: 10.0),
                Text(
                  title,
                  style: titleStyle,
                  textAlign: TextAlign.center,
                ),
                Divider(),
                Text(
                  description,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(buttonText),
                    onPressed: () => Navigator.pop(context, true),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

  IconData _getIconForType(AlertDialogType type) {
    switch (type) {
      case AlertDialogType.WARNING:
        return Icons.warning;
      case AlertDialogType.SUCCESS:
        return Icons.check_circle;
      case AlertDialogType.ERROR:
        return Icons.error;
      case AlertDialogType.INFO:
      default:
        return Icons.info_outline;
    }
  }

  Color _getColorForType(AlertDialogType type) {
    switch (type) {
      case AlertDialogType.WARNING:
        return Colors.orange;
      case AlertDialogType.SUCCESS:
        return Colors.green;
      case AlertDialogType.ERROR:
        return Colors.red;
      case AlertDialogType.INFO:
      default:
        return Colors.blue;
    }
  }
}