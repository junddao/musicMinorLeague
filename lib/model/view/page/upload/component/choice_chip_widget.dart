import 'package:flutter/material.dart';
import 'package:music_minorleague/model/enum/music_type_enum.dart';
import 'package:music_minorleague/model/view/style/colors.dart';
import 'package:music_minorleague/model/view/style/textstyles.dart';

class choiceChipWidget extends StatefulWidget {
  final List<MusicTypeEnum> reportList;

  choiceChipWidget(this.reportList);

  @override
  _choiceChipWidgetState createState() => new _choiceChipWidgetState();
}

class _choiceChipWidgetState extends State<choiceChipWidget> {
  MusicTypeEnum selectedChoice;

  _buildChoiceList() {
    List<Widget> choices = List();
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(getLabelTypeOfMusicList(item)),
          labelStyle: MTextStyles.bold14Black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: Color(0xffededed),
          selectedColor: MColors.tomato,
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }

  String getLabelTypeOfMusicList(MusicTypeEnum value) {
    String returnString;
    switch (value) {
      case MusicTypeEnum.classical:
        returnString = '클래식';
        break;
      case MusicTypeEnum.contry:
        returnString = '컨트리';
        break;
      case MusicTypeEnum.dance:
        returnString = '댄스';
        break;
      case MusicTypeEnum.electronic:
        returnString = '일렉트로닉';
        break;

      case MusicTypeEnum.folk:
        returnString = '포크';
        break;
      case MusicTypeEnum.hiphop:
        returnString = '힙합';
        break;
      case MusicTypeEnum.jazz:
        returnString = '재즈';
        break;
      case MusicTypeEnum.pop:
        returnString = '팝';
        break;
      case MusicTypeEnum.rap:
        returnString = '랩';
        break;
      case MusicTypeEnum.rock:
        returnString = '락';
        break;
      case MusicTypeEnum.etc:
        returnString = '기타';
        break;
    }
    return returnString;
  }
}