import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../core/providers/screen_config.dart';
import '../../core/providers/shared_provider.dart';

bool isShowing = false;

class LoadingDialog {
  final String? text;
  final ShapeBorder? borderShape;
  final BuildContext? context;
  LoadingDialog({
    this.text,
    this.borderShape,
    this.context,
  });

  void show({String? message}) {
    final shared = Provider.of<SharedProvider>(context!, listen: false);
    if (!isShowing) {
      shared.loadingDialogText = message ?? '';
      showDialog(
        context: context!,
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => Future.value(false),
            child: Dialog(
              child: Padding(
                padding: EdgeInsets.all(getScreenPixel(15)),
                child: _DialogBody(),
              ),
              shape: borderShape == null ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) : borderShape,
            ),
          );
        },
      );
      isShowing = true;
      debugPrint('loading show: $isShowing');
    } else {
      debugPrint('loading show: false');
      return;
    }
  }

  void hide() {
    if (isShowing) {
      debugPrint('loading hide: $isShowing');
      isShowing = false;
      Navigator.pop(context!);
    } else {
      return;
    }
  }

  void update({String? message}) {
    final shared = Provider.of<SharedProvider>(context!, listen: false);
    shared.loadingDialogText = message ?? '';
  }
}

class _DialogBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final shared = Provider.of<SharedProvider>(context);

    return Row(
      children: [
        CircularProgressIndicator(),
        SizedBox(
          width: getScreenWidth(10),
        ),
        Text(shared.loadingDialogText == null ? 'Loading...' : shared.loadingDialogText),
      ],
    );
  }
}
