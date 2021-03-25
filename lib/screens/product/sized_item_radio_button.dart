import 'package:flutter/material.dart';


//Radiobutton
enum SingingCharacter { medium, large, extraLarge,  }
class SizeItemRadioButton extends StatefulWidget {
  SizeItemRadioButton({Key key}) : super(key: key);
  @override
  _SizeItemRadioButtonState createState() => _SizeItemRadioButtonState();
}

class _SizeItemRadioButtonState extends State<SizeItemRadioButton> {
  SingingCharacter _character = SingingCharacter.medium;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<SingingCharacter>(
          title: const Text('Medium, 26cm  6.90 '),
          value: SingingCharacter.medium,
          groupValue: _character,
          onChanged: (SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Large, 32cm  9.90'),
          value: SingingCharacter.large,
          groupValue: _character,
          onChanged: (SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Party-Pizza, 40cm 14.50'),
          value: SingingCharacter.extraLarge,
          groupValue: _character,
          onChanged: (SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}