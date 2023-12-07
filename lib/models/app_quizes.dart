import 'package:football_quiz/models/question.dart';
import 'package:football_quiz/models/quiz.dart';

class AppQuizes {
  static final List<Quiz> quizes = [
    ///Football History
    const Quiz(
      category: 'Category 1',
      title: 'Football history',
      questions: [
        Question(
          question: 'Who won the first FIFA World Cup in 1930?',
          answers: ['Germany', 'Brazil', 'Uruguay'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'In what year was the Football Association (FA) founded?',
          answers: ['1901', '1875', '1863'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Which country hosted the 1966 FIFA World Cup?',
          answers: ['Brazil', 'Italy', 'England'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Who is known as the "Black Pearl" and played for Brazil in the 1970s?',
          answers: ['Diego Maradona', 'Johan Cruyff', 'Pelé'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'In what year did the German national team win their last FIFA World Cup?',
          answers: ['2006', '2010', '2014'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Which club won the first-ever European Cup in 1956?',
          answers: [' Barcelona', 'AC Milan', 'Real Madrid'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'In what year did the first-ever recorded football match take place?',
          answers: ['1905', '1888', '1872'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Who was the first footballer to score 1000 career goals?',
          answers: ['Lionel Messi', 'Cristiano Ronaldo', 'Pelé'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              "Which nation won the first-ever Women's World Cup in 1991?",
          answers: ['Brazil', 'Germany', 'United States'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which country hosted the first-ever FIFA World Cup for women?',
          answers: ['Canada', 'Sweden', 'China'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Who is credited with the invention of modern football rules?',
          answers: ['Johan Cruyff', 'Pelé', 'Ebenezer Cobb Morley'],
          rightAnswerIndex: 2,
        ),
      ],
    ),

    ///Football clubs & trophies
    const Quiz(
      category: 'Category 2',
      title: 'Football clubs & trophies',
      questions: [
        Question(
          question:
              'Which football club has won the most UEFA Champions League titles?',
          answers: ['AC Milan', 'FC Barcelona', 'Real Madrid'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'In what year was FC Bayern Munich founded?',
          answers: ['1900', '1906', '1909'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Who is the all-time top scorer for Manchester United?',
          answers: ['Cristiano Ronaldo', 'Eric Cantona', ' Wayne Rooney'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which club has won the most English Premier League titles?',
          answers: ['Arsenal', 'Liverpool', 'Manchester United'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'In what year did Chelsea FC win their first Premier League title?',
          answers: ['2004-2005', '2009-2010', '2005-2006'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Which Italian club is known as "The Old Lady"?',
          answers: ['AS Roma', 'Inter Milan', 'Juventus'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Which Spanish club\'s nickname is "Los Blancos"?',
          answers: ['FC Barcelona', 'Real Madrid', 'Atlético Madrid'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which German club has the nickname "Die Roten" (The Reds)?',
          answers: [
            'Borussia Dortmund',
            'Bayer Leverkusen',
            'FC Bayern Munich'
          ],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Which Dutch club is known as "The Boeren" (The Farmers)?',
          answers: ['PSV Eindhoven', 'Feyenoord', 'Ajax'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'In what year did AC Milan win their last Serie A title?',
          answers: [' 2010-2011', '2013-2014', '2011-2012'],
          rightAnswerIndex: 2,
        ),
      ],
    ),

    /// Player records
    const Quiz(
      category: 'Category 3',
      title: 'Player records',
      questions: [
        Question(
          question:
              'Who holds the record for the most goals scored in a single calendar year?',
          answers: ['Pelé', 'Cristiano Ronaldo', 'Lionel Messi'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Which player has won the most Ballon d\'Or awards?',
          answers: ['Lionel Messi', 'Cristiano Ronaldo', 'Pelé'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Who is the all-time top scorer in the UEFA Champions League?',
          answers: ['Lionel Messi', 'Raúl', 'Cristiano Ronaldo'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'In what year did Johan Cruyff win his first Ballon d\'Or?',
          answers: ['1975', '1973', '1970'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which goalkeeper has the most clean sheets in Premier League history?',
          answers: ['Petr Čech', 'Edwin van der Sar', 'David De Gea'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Who is the only player to have scored in three different FIFA World Cup finals?',
          answers: ['Pelé', 'Diego Maradona', 'Zinedine Zidane'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Which player is known as "The King of Assists"?',
          answers: ['Neymar', 'Luka Modrić', 'Kevin De Bruyne'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Who scored the fastest hat-trick in Premier League history?',
          answers: ['Alan Shearer', 'Thierry Henry', 'Sergio Agüero'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which player holds the record for the most appearances in the Premier League?',
          answers: ['Ryan Giggs', 'Frank Lampard', 'Gareth Barry'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Who is the only player to have won the FIFA World Cup, UEFA Champions League, and Ballon d\'Or in the same year?',
          answers: ['Lionel Messi', 'Cristiano Ronaldo', 'Fabio Cannavaro'],
          rightAnswerIndex: 2,
        ),
      ],
    ),

    /// National Team
    const Quiz(
      category: 'Category 4',
      title: 'National team',
      questions: [
        Question(
          question: 'Which country has won the most FIFA World Cup titles?',
          answers: ['Brazil', 'Germany', 'Italy'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'In what year did the French national team win their first FIFA World Cup?',
          answers: ['2010', '2002', '1998'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which African country was the first to win the Africa Cup of Nations?',
          answers: ['Nigeria', 'Egypt', 'Ghana'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Who is the all-time top scorer for the Spanish national team?',
          answers: ['Fernando Hierro', 'David Villa', 'David Silva'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'In what year did the English national team win their only FIFA World Cup?',
          answers: ['1962', '1970', '1966'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which Asian country has won the AFC Asian Cup the most times?',
          answers: ['Japan', 'South Korea', 'Iran'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which country won the first-ever Women\'s World Cup in 1991?',
          answers: ['Brazil', 'Germany', 'United States'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'In what year did the German national team win their last FIFA World Cup?',
          answers: ['2006', '2010', '2014'],
          rightAnswerIndex: 2,
        ),
        Question(
          question: 'Which nation has won the most Copa America titles?',
          answers: ['Argentina', 'Uruguay', 'Brazil'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'In what year did the German national team win their first FIFA World Cup as a unified nation?',
          answers: ['1954', '1974', '1990'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which country has the most appearances in the UEFA European Championship Final?',
          answers: ['Germany', 'Spain', 'Italy'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Who is the all-time top scorer for the Brazilian national team?',
          answers: ['Ronaldo', 'Pelé', 'Neymar'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'In what year did Mexico win their first and only FIFA World Cup?',
          answers: ['1962', '1986', '1970'],
          rightAnswerIndex: 2,
        ),
        Question(
          question:
              'Which African nation was the first to reach the quarter-finals in a FIFA World Cup?',
          answers: ['Cameroon', 'Nigeria', 'Senegal'],
          rightAnswerIndex: 2,
        ),
      ],
    ),
  ];
}
