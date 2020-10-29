# vk_alert_dialog

**Library is used to display custom alert dialogs for different types**

Types : 
   > Success
   > Error
   > Info

To Use library, add library in `pubsec.yaml` file:
```
vk_alert_dialog: ^0.0.1
```
after package pasted run `flutter packages get` in terminal, then import package
```
import 'package:vk_alert_dialog/vk_alert_dialog.dart';
```

**finally use in your Dart code**

For success alert dialog
```
await VKAlertDialog.successDialog(
                    icon: Icon(Icons.account_circle),
                    context: context,
                    title: 'Profile Update',
                    description: 'profile has been updated successfully',
                    buttonText: 'OK');
```

For Error alert dialog

```
await VKAlertDialog.errorDialog(
                    context: context,
                    title: 'Profile Update',
                    description: 'profile update failed, please try again',
                    buttonText: 'OK');
```


