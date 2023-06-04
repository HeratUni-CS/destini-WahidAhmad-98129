import 'Story.dart';


class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
      storyTitle: 'Story 1',
      choice1: 'Choice 1 for story 1',
      choice2: 'Choice 2 for story 1',
    ),
    Story(
      storyTitle: 'Story 2',
      choice1: 'Choice 1 for story 2',
      choice2: 'Choice 2 for story 2',
    ),
    Story(
      storyTitle: 'Story 3',
      choice1: 'Choice 1 for story 3',
      choice2: 'Choice 2 for story 3',
    ),
    Story(
      storyTitle: 'Story 4',
      choice1: 'Choice 1 for story 4',
      choice2: 'Choice 2 for story 4',
    ),
    Story(
      storyTitle: 'Story 5',
      choice1: 'Choice 1 for story 5',
      choice2: 'Choice 2 for story 5',
    ),
    Story(
      storyTitle: 'Story 6',
      choice1: 'Choice 1 for story 6',
      choice2: 'Choice 2 for story 6',
    ),
    Story(
      storyTitle: 'The end',
      choice1: '',
      choice2: '',
    ),
  ];

  String? getStoryTitle() => _storyData[_storyNumber].storyTitle;

  String? getChoice1() => _storyData[_storyNumber].choice1;

  String? getChoice2() => _storyData[_storyNumber].choice2;

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 1;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 3;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 6;
    } else if (_storyNumber >= 3) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }
}


























// class StoryBrain {
//   List<Story> storyData = [
//     Story(
//         storyTitle: 'Your plane has crashed in a forest. What do you do?',
//         choice1: 'Stay by the plane and wait for rescue',
//         choice2: 'Start walking to find civilization'),
//     Story(
//         storyTitle: 'While walking, you see a bear. What do you do?',
//         choice1: 'Play dead',
//         choice2: 'Run for your life!'),
//     Story(
//         storyTitle:
//             'After running for a while, you see a cabin. What will you do?',
//         choice1: 'Go in and rest',
//         choice2: 'Keep running in the forest'),
//   ];

//   int _storyNumber = 0;
  
//   Story getNextStory(int choiceNumber) {
//     if (_storyNumber == 0 && choiceNumber == 1) {
//       _storyNumber = 1;
//     } else if (_storyNumber == 0 && choiceNumber == 2) {
//       _storyNumber = 2;
//     } else if (_storyNumber == 1 && choiceNumber == 1) {
//       _storyNumber = 3;
//     } else if (_storyNumber == 1 && choiceNumber == 2) {
//       _storyNumber = 4;
//     } else if (_storyNumber == 2 && choiceNumber == 1) {
//       _storyNumber = 5;
//     } else if (_storyNumber == 2 && choiceNumber == 2) {
//       _storyNumber = 6;
//     } else if (_storyNumber >= 3) {
//       restart();
//     }
//     return storyData[_storyNumber];
//   }

//   void restart() {
//     _storyNumber = 0;
//   }

//   int getStoryNumber() {
//     return _storyNumber;
//   }
// }
