

import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_flutter/common/constant.dart';

class LoadingDialog extends StatefulWidget{
  final Function dismissDialog;

  LoadingDialog({
    Key key,
    this.dismissDialog
  }) : super(key: key);

  @override
  _LoadingDialogState createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog> {

  @override
  void initState() {
    super.initState();
    if (widget.dismissDialog != null) {
      widget.dismissDialog(() {
        Navigator.of(context).pop();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Center(
        child: Opacity(
          opacity: 0.8,
          child: SpinKitRing(
            color: APPColors.PrimaryColor,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}













