import 'package:destini/StoryBrain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
   final StoryBrain _storyBrain = StoryBrain();

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Destini App'),),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                       _storyBrain.getStoryTitle().toString(),
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                         _storyBrain.nextStory(1);
                      });
                    },
                    // color: Colors.red,
                    child: Text(
                      _storyBrain.getChoice1().toString(),
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),

                  SizedBox(
                  height: 20.0,
                ),

                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                          _storyBrain.nextStory(2);
                      });
                    },
                    // color: Colors.blue,
                    child: Text(
                      _storyBrain.getChoice2().toString(),
                      // style: TextStyle(fontSize: 20.0, color:MaterialAccentColor(primary, swatch).white),
                      style: TextStyle(fontSize: 20.0, color: Colors.white),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
