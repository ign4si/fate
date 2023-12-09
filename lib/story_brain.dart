import "story.dart";

class StoryBrain {
  int storyNumber = 0;
  final List<Story> _storyData = [
    Story(
        storyTitle:
            '16 de Diciembre, tesis entregada y defendida. Viernes a la noche. Te encuentras en la cocina del sabato. Adrian esta cocinando una lasagna desde el lunes ocupando todas las hornallas. Estas por calentar tu viandita y te das cuenta que le falta sal y pimienta. En la cocina tambien está Tadeo, poniendole sal y pimienta a los fideos. Adrian te dice que te vayas a su pieza que se las dejo ahi, que seguro está Yhibo',
        choice1: 'Pedirle a Tadeo que te preste los condimentos',
        choice2: 'Ir a la habitacion de Adrian y Yhibo'),
    Story(
        storyTitle:
            'Obtienes la sal. Te vas a tu habitacion y comes lo que sobró de tu viandita del mediodia, mientras ves tu capitulo de tu serie. Ya es casi medianoche y estas aburrido.',
        choice1: 'Ir a la salita a ver si hay alguien',
        choice2: 'Ir a visitar a Yhibo'),
    Story(
        storyTitle:
            'Vas a la salita. Paulo esta escribiendo su tesis de matematica mientra se toma unos matienzos. En el sillón esta Pico.',
        choice1: 'Hablarle a Pico',
        choice2: 'Hablarle a Paulo'),
    Story(
        storyTitle:
            'Vas a la habitacion de Yhibo y te encuentras que tambien esta el Rubi, ambos estan charlando sobre cosas teleco. Pero llego ese momento en el que se quedan sin tema de conversacion. Yhibo se pone a ver videos en Youtube y Ruben se pone a ver memes en facebook.',
        choice1: 'Hablarle a Yhibo',
        choice2: 'Hablarle a Ruben'),
    Story(
        storyTitle:
            'Paulo te explica un poco de que se trata su tesis, pero no le entendes nada. En ese entonces llega Ruben a la salita y se pone a charlar contigo. Viene a charlar de algo con Paulo. Ruben esta a punto de empezar a conversas con él.',
        choice1: 'Interrumpir a Ruben y charlar con él',
        choice2: 'Dejarlos que hablen, ya fue'),
    Story(
        storyTitle:
            'Se ponen a hablar de cosas telecos, que no te importan. Te vas a dormir, aburrido y sin haber hecho nada.',
        choice1: 'Comenzar otra vez',
        choice2: ''),
    Story(
        storyTitle:
            'Yhibo te cuenta que estaba viendo videos de LinusTechTips y se ponen a hablar huevoná de computadoras por un buen rato. En lo que llega Adrian y los invita a todos a comer la lasagna. Comes y tienes un gran momento con los panas para luego irte a dormir repleto y feliz.',
        choice1: 'Comenzar otra vez',
        choice2: ''),
    Story(
        storyTitle:
            'Pico te empieza a romper las bolas con su tesis del culo mientras habla de lo dificil que es el balseiro. En cuanto termina, te das cuenta que perdiste 30 minutos de tu vida y te vas a dormir, aburrido y sin haber hecho nada.',
        choice1: 'Comenzar otra vez',
        choice2: ''),
    Story(
        storyTitle:
            'Ruben te invita a meterle sucublum. Van a la pieza del Rubi, te sientas en su silla mientras te metes un pipazo. Te vas a dormir re loco y feliz.',
        choice1: 'Comenzar otra vez',
        choice2: ''),
  ];

  String getStory() {
    return _storyData.elementAt(storyNumber).storyTitle;
  }

  String getChoice1() {
    return _storyData.elementAt(storyNumber).choice1;
  }

  String getChoice2() {
    return _storyData.elementAt(storyNumber).choice2;
  }

  void setStoryPath() {
    List<int> n1list = [1, 2, 7, 6, 8, 0, 0, 0, 0];
    List<int> n2list = [3, 3, 4, 8, 5, 0, 0, 0, 0];
    for (int i = 0; i < n1list.length; i++) {
      _storyData.elementAt(i).setchoices(n1list[i], n2list[i]);
    }
  }

  StoryBrain() {
    setStoryPath();
  }

  void nextStory(int choicenumber) {
    storyNumber = _storyData.elementAt(storyNumber).getchoices(choicenumber);
  }
}

//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.


//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.