import 'story_brain.dart';
import 'package:flutter/material.dart';

//DONE: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this if it looks as you expected.

void main() => runApp(const Destini());

class Destini extends StatelessWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const StoryPage(),
    );
  }
}

//DONE: Step 9 - Create a new storyBrain object from the StoryBrain class.
StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //DONE: Step 1 - Add background.png to this Container as a background image.
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mob.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 6,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      //DONE: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                      storyBrain.getStory(),
                      style: const TextStyle(
                        fontSize: 26.0,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      //Choice 1 made by user.
                      //DONE: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                    },
                    child: Text(
                      //DONE: Step 13 - Use the storyBrain to get the text for choice 1.
                      storyBrain.getChoice1(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                //DONE: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //DONE: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: Container(
                    color: Color.fromARGB(255, 33, 243, 205),
                    child: TextButton(
                      onPressed: () {
                        //Choice 2 made by user.
                        //DONE: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      },
                      child: Text(
                        //DONE: Step 14 - Use the storyBrain to get the text for choice 2.
                        storyBrain.getChoice2(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
