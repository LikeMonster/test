//DONE: Step 6 - import the story.dart file into this file.
import 'story.dart';

//DONE: Step 5 - Create a new class called StoryBrain.
class StoryBrain {
//DONE: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

  final List<Story> _storyData = [
    //0
    Story(
        storyTitle:
            '''The night begins to fall and little by little the hunger becomes present...  What you can do?''',
        choice1: 'Check the fridge',
        choice2: 'Request an address'),
    /*Story(
        storyTitle:
            '''La noche empieza a caer y asi mismo el habre poco a poco se hace presente... 
             ¿Qué puedes hacer?''',
        choice1: 'Mirar la nevera',
        choice2: 'Pedir un domicilio'),*/

    //1

    Story(
        storyTitle:
            '''There's a knock on the door but... Isn't it too early for it to be the address?''',
        choice1: 'Look through the spyhole to see who it is',
        choice2: 'Ignore'),
    /*Story(
        storyTitle:
            'Tocan la puerta1 pero... ¿No es acaso muy pronto para que sea el domicilio?',
        choice1: 'Observar por la mirilla quien es',
        choice2: 'Ignorar'),*/
    //2

    Story(
        storyTitle: 'There is a knock on the door... strangely insistent.',
        choice1: 'Open it',
        choice2: 'Ignore'),
    /*Story(
        storyTitle: 'Tocan la puerta2... de manera extrañamente insistente',
        choice1: 'Abrirla',
        choice2: 'Ignorar'),*/
    //3
    Story(
        storyTitle:
            '''Ending 3: You seem to have fallen asleep while waiting for the domiciliary.When you wake up you see a small notice that they have issued a small fine for not answering the door when the domiciliary arrived. You notice that you left the TV on the news channel, there is a headline related to disappearances in your area. Thank goodness you know that... YOU SHOULD NOT OPEN THE DOOR TO STRANGERS''',
        choice1: 'Play Again',
        choice2: ''),
    /*Story(
        storyTitle: '''
              Fina 4: 
              Parece que te has quedado dormid@ en lo que esperabas el domicilio.Al despertar ves una pequeña notificación de que han puesto una pequeña multa por no atender la puerta cuando llegó el domiciliario. Notas que dejaste el televisor encendido en el canal de las noticias, aparece un encabezado relacionado con desapariciones en tu zona
              menos mal sabes que...



              NO DEBES ABRIRLE LA PURTA A EXTRAÑOS''',
        choice1: 'Restart',
        choice2: ''),*/
    //4
    Story(
        storyTitle:
            '''Ending 2: After all you proceed to sleep. The next morning you hear the news that your neighbor has disappeared, you wonder if that thing knocking on your door the day before was the culprit, luckily you know that... YOU SHOULDN'T OPEN YOUR DOOR TO STRANGERS''',
        choice1: 'Play Again',
        choice2: ''),
    /*
         Story(
        storyTitle: '''
              Fina 2: 
              Despues de comer lo que había en la nevera procedes a dormir.
              A la mañana siguiente escuchas la noticia de que tu vecina
              ha desaparecio, te preguntas si aquella cosa tocando tu puerta el día anterior
              fue el culpable, menos mal sabes que...



              NO DEBES ABRIRLE LA PURTA A EXTRAÑOS''',
        choice1: 'Restart',
        choice2: ''),*/
    //5
    Story(
        storyTitle:
            '''Ending 1: It's early in the morning, you have a lot of calls from your boss and coworkers, you haven't been to work in a week, and you're missing on the news.... YOU SHOULD NOT OPEN YOUR DOOR TO STRANGERS''',
        choice1: 'Play Again',
        choice2: ''),
    /*Story(
        storyTitle: '''
              Final 1: 
              Ya es temprano en la mañana, 
              tienes muchas llamadas de tu jefe y compañeros de trabajo,
              no has ido al trabajo en una semana y en las noticias apareces como desaparecid@...



              NO DEBES ABRIRLE LA PURTA A EXTRAÑOS''',
        choice1: 'Restart',
        choice2: ''),*/
    //6
    Story(storyTitle: 'Final 3:', choice1: 'Restart', choice2: ''),
  ];

  //DONE: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

  //DONE: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  //DONE: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  //DONE: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  //DONE: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

  //DONE: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int _storyNumber = 0;

  //DO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiceNumber) {
    _storyNumber = _storyFlow[_storyNumber][choiceNumber];
  }

  //DONE: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

  //DONE: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

  final List<List<int>> _storyFlow = [
    // [_storyNumber(same as list index), _storyNumber if is choice1, _storyNumber if is choice2]
    [0, 2, 1],
    [1, 2, 3],
    [2, 5, 4],
    [3, 0, 0], // automatic restart
    [4, 0, 0], // automatic restart[5, 0, 0],
    [5, 0, 0],
    [6, 0, 0], // automatic restart
  ];

  //DONE: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
  void restart() {
    _storyNumber = 0;
  }

  //DONE: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    }
    return false;
  }
}
