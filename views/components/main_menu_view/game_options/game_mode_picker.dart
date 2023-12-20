import 'package:flutter/cupertino.dart';

import 'picker.dart';

class GameModePicker extends StatelessWidget {
  final Map<int, Text> playerCountOptions = const <int, Text>{
    2: Text('Two Player'),
    1: Text('Computer'),

  };

  final int playerCount;
  final Function(int?) setFunc;

  GameModePicker(this.playerCount, this.setFunc);

  @override
  Widget build(BuildContext context) {
    return Picker<int>(
      label: 'Game Mode',
      options: playerCountOptions,
      selection: playerCount,
      setFunc: setFunc,
    );
  }
}
