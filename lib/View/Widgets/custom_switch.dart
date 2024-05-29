import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class CustomSwitch extends StatefulWidget {
  final String leadingText;
  final bool value;
  final Function(bool) onToggle;
  final double? fontSize;

  const CustomSwitch({
    super.key,
    required this.leadingText,
    required this.value,
    required this.onToggle,
    this.fontSize,
  });

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool _switchValue;

  @override
  void initState() {
    super.initState();
    _switchValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double defaultFontSize = size.height * 0.02;
    double fontSize = widget.fontSize ?? defaultFontSize;

    return Column(
      children: [
        ListTile(
          leading: Text(
            widget.leadingText,
            style: TextStyle(fontSize: fontSize),
          ),
          trailing: CupertinoSwitch(
            activeColor: primaryColor,
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
              widget.onToggle(value);
            },
          ),
        ),
      ],
    );
  }
}
