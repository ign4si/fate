class Story {
  String storyTitle;
  String choice1;
  String choice2;

  Story(
      {required this.storyTitle, required this.choice1, required this.choice2});

  late int choice1_story;
  late int choice2_story;

  void setchoices(int n1, int n2) {
    choice1_story = n1;
    choice2_story = n2;
  }

  int getchoices(int choice) {
    if (choice == 1) {
      return choice1_story;
    } else {
      return choice2_story;
    }
  }
}
