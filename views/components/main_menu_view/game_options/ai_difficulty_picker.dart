import 'package:flutter/cupertino.dart';

import 'picker.dart';

class AIDifficultyPicker extends StatelessWidget {
  final Map<int, Text> difficultyOptions = {
     1: Text('beginner'),
    2: Text('intermediate'),
     3: Text("hard"),
    //4: Text(''),
    5: Text('ADVANCED'),
     6: Text('master')




  };

  final int aiDifficulty;
  final Function(int?) setFunc;

  AIDifficultyPicker(this.aiDifficulty, this.setFunc);

  @override
  Widget build(BuildContext context) {
    return Picker<int>(
      label: 'AI Difficulty',
      options: difficultyOptions,
      selection: aiDifficulty,
      setFunc: setFunc,
    );
  }
}
