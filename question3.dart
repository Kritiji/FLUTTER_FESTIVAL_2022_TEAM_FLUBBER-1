import 'dart:io';

void main() {
  // Map of birthdays of people
  Map<String?, Object> birthdays = {
    "Albert Einstein": "14/03/1879",
    "Benjamin Franklin": "17/01/1706",
    "Ada Lovlace": "10/12/1815",
    "Galileo Galilei" : "15/02/1564",
    "Charles Darwin" : "12/02/1809",
    "Stephen Hawking" : "08/01/1942",
  };

  print("\nHello there!. We know the birthdays of the following people: \n");

  birthdays.forEach((key, value) {
    print(key);
  });

  stdout.write("\nWho's birthday do you want to know? ");
  String? choice = stdin.readLineSync();

  print("\n$choice's birthday is ${birthdays[choice]}\n");
}
