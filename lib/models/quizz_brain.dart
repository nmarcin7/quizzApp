import '../models/question.dart';

class QuizzBrain {
  final List<Question> _listOfQuestions = [
    Question(
      textQuestion: 'Are photons particles with mass?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Can the number π be expressed as a fraction?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Do all humans perceive colors in the same way?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Do all chemical elements occur naturally on Earth?',
      questionAnswer: true,
    ),
    Question(
      textQuestion:
          'Is the color blue the most energetic color in the light spectrum?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Can objects move faster than light?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Do all galaxies move away from each other?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Is mathematics the only science based on proofs?',
      questionAnswer: true,
    ),
    Question(
      textQuestion: 'Are there integers greater than infinity?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Can you divide by zero in mathematics?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Do all humans have the same number of genes?',
      questionAnswer: true,
    ),
    Question(
      textQuestion: 'Are all molecules made up of atoms?',
      questionAnswer: true,
    ),
    Question(
      textQuestion: 'Is gravity the strongest force in nature?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Is every piece of ice cold?',
      questionAnswer: true,
    ),
    Question(
      textQuestion: 'Are all bacteria harmful to humans?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Do all substances conduct electricity?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Do all languages have the same sound for the same sounds?',
      questionAnswer: false,
    ),
    Question(
      textQuestion:
          'Is it possible to reach absolute zero temperature (0 Kelvin)?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Does a human only use 10% of their brain?',
      questionAnswer: false,
    ),
    Question(
      textQuestion: 'Do all planets in the Solar System have moons?',
      questionAnswer: false,
    ),
  ];

  List<Question> get listOfQuestions => _listOfQuestions;
}
