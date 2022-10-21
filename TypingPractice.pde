//Wordbank
String[] WordList = {"hello", "true", "house", "the", "be", "about", "into", "other", "we", "this", "that", "large", "america", "think", "most", "own", "and", "fact", "play", "increase", "word", "hi", "there", "after", "but", "from", "so", "help", "charge", "both", "between", "create", "very", "know", "not", "as", "with", "or", "they", "for", "trail", "flake", "break", "burn", "intrinsic", "information", "program", "flower", "earphones", "mechanical", "travel", "airplane", "motorcycle", "train", "potato", "pear", "criminal", "perfect", "great", "bad", "movies", "show", "stand", "after", "trial", "count", "number", "option", "yonder", "shake", "homely", "meager", "center", "optical", "pastor", "church", "water", "drink", "ghost", "ship", "air", "blasted", "ran", "escaped", "ghoul", "calculus", "history", "human", "zebra", "xylophone", "under", "waves", "fresh", "radical", "drawer", "artist", "song", "language", "video", "games", "controlling", "well", "small", "kill", "typing", "memes", "master", "jack", "project", "failure", "success", "victory", "school", "college", "port", "flames", "brain", "carrot", "apple", "hats", "batteries", "options", "broken", "running", "hoping", "faking", "loitering", "plaster", "metal", "wooden", "soft", "hard", "gloom", "doom", "drastic", "calling", "cyber", "caster", "crabby", "redact", "rudimentary", "retro", "row", "rafter", "baseball", "diamonds", "oscillate", "voracious"};
String curWord, nextWord, firstLetter;
String val1, val2;
color c;

void setup() {
  background(0);
  size(800, 500);
  curWord = "foo";
  nextWord = "foo";
  newWord();
  newWord2();
  newWord3();
  val1 = ".";
  val2 = ".";
  firstLetter = "foo";
}

void draw() {
  background(0);
  textSize(32);
  textAlign(CENTER);
  fill(255);
  text(curWord, width/2, height/2);
  fill(#FFFA52);
  textSize(28);
  text(nextWord, width/2, height/2 - 100);
  textSize(32);
  fill(c);
  text(val1, width/2, height/2 + 100);
  controlWord();
}

void controlWord()
{
  if (curWord.length() >= 1)
  {
    firstLetter = curWord.substring(0, 1);
  } else {
    firstLetter = "foo";
    val1 = "";
    newWord2();
    c = color(0, 0, 0);
    newWord3();
  };
  if (val1 != val2)
  {
    if (val1.equals(firstLetter))
    {
      curWord = curWord.substring(1, curWord.length());
      c = color(0, 255, 0);
      val2 = val1;
    } else c = color(255, 0, 0);
  }
}

void keyPressed()
{
  String x;
  x = str(key);
  val1 = x;
}

//Make random word
void newWord() {
  int numIndex = floor(random(0, 1) * WordList.length);
  nextWord = WordList[numIndex];
}
void newWord2() {
  curWord = nextWord;
}
void newWord3() {
  int numIndex = floor(random(0, 1) * WordList.length);
  if (nextWord.equals(curWord))
    nextWord = WordList[numIndex];
}
