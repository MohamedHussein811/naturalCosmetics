import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class CustomSwitch extends StatefulWidget {
  final String leadingText;
  final bool value;  // Added this line
  final Function(bool) onToggle;

  const CustomSwitch({
    super.key,
    required this.leadingText,
    required this.value,  // Added this line
    required this.onToggle
  });

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool _switchValue;

  @override
  void initState() {
    super.initState();
    _switchValue = widget.value; // Initialize switch state with the passed value
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(
            widget.leadingText,
            style: const TextStyle(fontSize: 16.0),
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
