import 'dart:math';

class PlayGround {
  final Random random;
  late final list;
  late final signsList;

  // in our constructor we take the random object and generate our lists
  PlayGround(this.random) {
    // generate the signs list to make our array positive and negative numbers
    signsList = [-1, 1];

    // generate random array or numbers with random length and random signs
    this.list = List.generate(
      random.nextInt(100),
      (index) => random.nextInt(1000) * signsList[random.nextInt(2)],
    );
  }

  // this function to calculate if there is two numbers with sum 12 or not
  void get12Number() {
    // flag to know is ther two numbers with sum 12 or not
    bool isThere12 = false;

    // print the array list
    print("The Array List Is $list");

    // loop trough the array and get the sum of every two numbers
    for (var outer in list) {
      for (var inner in list) {
        // if there is two numbers with sum 12 we print them and close the loops
        if ((inner + outer) == 12) {
          print("\nYay We Found It $inner + $outer = ${inner + outer}");
          isThere12 = true;
          return;
        }
      }
    }

    // if there is no numbers with sum 12 we print this line
    if (!isThere12) {
      print("\nThere Is No Two Numbers There Sum Equals 12 ");
    }
  }
}

void main() {
  // take an object or our playground after pass the random object
  final playground = PlayGround(Random());

  // fetch our function to get the result
  playground.get12Number();
}
