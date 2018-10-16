require 'rubocop'
$tour = 1
$all_cases = []

class Game
  attr_accessor :playing, :draw, :victory, :winner

  def initialize
    @playing = true
    @draw = false
    @victory = false
    end

  def game_status
    if ($all_cases[0].is_x && $all_cases[1].is_x && $all_cases[2].is_x) || ($all_cases[3].is_x && $all_cases[4].is_x && $all_cases[5].is_x )|| ($all_cases[6].is_x && $all_cases[7].is_x && $all_cases[8].is_x) || ($all_cases[1].is_x && $all_cases[4].is_x && $all_cases[7].is_x)|| ($all_cases[2].is_x && $all_cases[5].is_x && $all_cases[8].is_x) || ($all_cases[0].is_x && $all_cases[3].is_x && $all_cases[6].is_x) || ($all_cases[1].is_x && $all_cases[4].is_x && $all_cases[7].is_x) || ($all_cases[2].is_x && $all_cases[5].is_x && $all_cases[8].is_x) || ($all_cases[0].is_x && $all_cases[4].is_x && $all_cases[8].is_x) || ($all_cases[2].is_x && $all_cases[4].is_x && $all_cases[6].is_x)
      is_victory
      @winner = $player2

    elsif ($all_cases[0].is_O && $all_cases[1].is_O && $all_cases[2].is_O) || ($all_cases[3].is_O && $all_cases[4].is_O && $all_cases[5].is_O) || ($all_cases[6].is_O && $all_cases[7].is_O && $all_cases[8].is_O) || ($all_cases[2].is_O && $all_cases[5].is_O && $all_cases[8].is_O) || ($all_cases[1].is_O && $all_cases[4].is_O && $all_cases[7].is_O) || ($all_cases[0].is_O && $all_cases[3].is_O && $all_cases[6].is_O) || ($all_cases[1].is_O && $all_cases[4].is_O && $all_cases[7].is_O) || ($all_cases[2].is_O && $all_cases[5].is_O && $all_cases[8].is_O) || ($all_cases[0].is_O && $all_cases[4].is_O && $all_cases[8].is_O) || ($all_cases[2].is_O && $all_cases[4].is_O && $all_cases[6].is_O)
      is_victory
      @winner = $player1

    elsif $tour > 9 && @victory == false
      is_draw
    end
    end

  def is_victory
    @playing = false
    @victory = true
    end

  def is_draw
    @playing = false
    @draw = true
    end
end

class Board
  def display(case_1, case_2, case_3, case_4, case_5, case_6, case_7, case_8, case_9)
    puts "	      | #{case_1.display} | #{case_2.display} | #{case_3.display} |"

    puts "	      | #{case_4.display} | #{case_5.display} | #{case_6.display} |"

    puts "	      | #{case_7.display} | #{case_8.display} | #{case_9.display} |"
  end
end

class Boardcase < Board
  attr_accessor :is_x, :is_O, :empty_case

  def initialize(num)
    @empty_case = true
    @num = num
    $all_cases << self
  end

  def display
    if empty_case
      @num
    elsif is_x
      'x'
    elsif is_O
      'O'
    end
end

  def change_to_x
    @empty_case = false
    @is_x = true
  end

  def change_to_O
    @empty_case = false
    @is_O = true
  end
end

partie = Game.new
board = Board.new

case_1 = Boardcase.new(1)
case_2 = Boardcase.new(2)
case_3 = Boardcase.new(3)
case_4 = Boardcase.new(4)
case_5 = Boardcase.new(5)
case_6 = Boardcase.new(6)
case_7 = Boardcase.new(7)
case_8 = Boardcase.new(8)
case_9 = Boardcase.new(9)

puts 'Bonjour Bienvenue dans cette partie de morpion, quel est le nom du joueur1 ?'
$player1 = gets.chomp
puts 'Quel est le nom du joueur 2 ?'
$player2 = gets.chomp

while partie.playing

  puts "------------- TOUR NUMÉRO #{$tour} -------------"

  board.display(case_1, case_2, case_3, case_4, case_5, case_6, case_7, case_8, case_9)

  if $tour.even?
    puts "C'est à #{$player1}"
    player_choice = gets.chomp.to_i
    while player_choice < 1 || player_choice > 9 || $all_cases[player_choice - 1].empty_case == false
      puts 'Entre 1 et 10 stp. Et évite de sélectionner une case déjà prise ;)'
      player_choice = gets.chomp.to_i
      end

    $all_cases[player_choice.to_i - 1].change_to_O
  else
    puts "C'est à #{$player2} de jouer"
    player_choice = gets.chomp.to_i
    while player_choice < 1 || player_choice > 9 || $all_cases[player_choice - 1].empty_case == false
      puts 'Entre 1 et 10 stp. Et évite de sélectionner une case déjà prise ;)'
      player_choice = gets.chomp.to_i
    end
    $all_cases[player_choice.to_i - 1].change_to_x
  end

  $tour += 1
  partie.game_status
  puts $all_cases[0].is_x && $all_cases[1].is_x && $all_cases[2].is_x
end

board.display(case_1, case_2, case_3, case_4, case_5, case_6, case_7, case_8, case_9)
if partie.victory
  puts "La partie est terminée !!!! Bravo à #{partie.winner} d'avoir gagné ;)"
elsif partie.draw
  puts "C'est dommage, #{$player1} et #{$player2} n'ont pas réussi à se départager. C'est un match nul :("
end
