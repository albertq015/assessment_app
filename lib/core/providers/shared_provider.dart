import 'package:flutter/cupertino.dart';

class SharedProvider extends ChangeNotifier{
  String? _loadingDialogText;

  String get loadingDialogText => _loadingDialogText!;

  set loadingDialogText(String value) {
    _loadingDialogText = value;
    notifyListeners();
  }
}