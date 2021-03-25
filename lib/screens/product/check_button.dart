import 'package:flutter/material.dart';

/// Check Sauce Button
class CheckButton extends StatefulWidget {
  CheckButton({Key key}) : super(key: key);

  @override
  _CheckButtonState createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
  bool _isFirstSelected = false;
  bool _isSecondSelected = false;
  bool _isthirtSelected = false;
  bool _isFourthSelected = false;
  bool _isfifthSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        CheckboxListTile(
          title: Text("title text"),
          value: _isFirstSelected,
          onChanged: (bool newValue) {
            setState(() {
              _isFirstSelected = newValue;
              print('$_isFirstSelected');
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: Text("Ananas"),
          value: _isSecondSelected,
          onChanged: (bool newValue) {
            setState(() {
              _isSecondSelected = newValue;
              print('$_isSecondSelected');
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: Text("Basilikum"),
          value: _isthirtSelected,
          onChanged: (bool newValue) {
            setState(() {
              _isthirtSelected = newValue;
              print('$_isthirtSelected');
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: Text("Oliven"),
          value: _isFourthSelected,
          onChanged: (bool newValue) {
            setState(() {
              _isFourthSelected = newValue;
              print('$_isFourthSelected');
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: Text("Peperoni"),
          value: _isfifthSelected,
          onChanged: (bool newValue) {
            setState(() {
              _isfifthSelected = newValue;
              print('$_isfifthSelected');
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        )
      ],
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}