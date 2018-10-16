tour = 0

class BoardCase

	attr_accessor :case_value, :case_number


	def initialize
		@case_value = case_value
		@case_number = case_number
	end	

	def to_s
		case_value = case_value.to_s
	end

end

=begin
	def change_to_x
	 player_entrance = "x"
	end

	def change_to_O
	player_entrance = "O"
	end

	def affichage
		if self

	end

	
end
=end

class Board

	attr_accessor :cases

		def initialize 
			@toutes_les_cases = [case1,case2,case3,case4,case5,case6,case7,case8,case9,]
		end

		def to_s

			puts "|#{case1}|#{case2}|#{case3}|"
			puts "|#{case4}|#{case5}|#{case6}|"
			puts "|#{case7}|#{case8}|#{case9}|"
		
		end

		def play

			 #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
		end

		def victory?

			if @toutes_les_cases[0].est_x && @toutes_les_cases[1].est_x && @toutes_les_cases[2].est_x || @toutes_les_cases[3].est_x && @toutes_les_cases[4].est_x && @toutes_les_cases[5].est_x || @toutes_les_cases[6].est_x && @toutes_les_cases[7].est_x && @toutes_les_cases[8].est_x || @toutes_les_cases[0].est_x && @toutes_les_cases[3].est_x && @toutes_les_cases[9].est_x || @toutes_les_cases[2].est_x && @toutes_les_cases[4].est_x && @toutes_les_cases[6].est_x || @toutes_les_cases[0].est_x && @toutes_les_cases[3].est_x && @toutes_les_cases[6].est_x @toutes_les_cases[1].est_x && @toutes_les_cases[4].est_x && @toutes_les_cases[7].est_x @toutes_les_cases[2].est_x && @toutes_les_cases[5].est_x && @toutes_les_cases[8].est_x
				@victory == true 
				puts "Le joueur 1 à gagné"
			elsif @toutes_les_cases[0].est_O && @toutes_les_cases[1].est_O && @toutes_les_cases[2].est_O || @toutes_les_cases[3].est_O && @toutes_les_cases[4].est_O && @toutes_les_cases[5].est_O || @toutes_les_cases[6].est_O && @toutes_les_cases[7].est_O && @toutes_les_cases[8].est_O || @toutes_les_cases[0].est_O && @toutes_les_cases[3].est_O && @toutes_les_cases[9].est_O || @toutes_les_cases[2].est_O && @toutes_les_cases[4].est_O && @toutes_les_cases[6].est_O || @toutes_les_cases[0].est_O && @toutes_les_cases[3].est_O && @toutes_les_cases[6].est_O @toutes_les_cases[1].est_O && @toutes_les_cases[4].est_O && @toutes_les_cases[7].est_O @toutes_les_cases[2].est_O && @toutes_les_cases[5].est_O && @toutes_les_cases[8].est_O
				@victory == true 
				puts "Le joueur 2 à gagné"
			elsif tour > 9
				@victory == false
				@draw == true
			end
end

class Player
	attr_accessor :joueur, :value 
	attr_writer : state

	def initialize
		@joueur = joueur
		@value = value
		@state = state
	end
end


	



class Game

attr_accessor :playing, :draw, :victory :

	def initialize
		@player1 = player1
		@player2 = player2
		@playing =  true
		@draw = false
		@victory = false
	end


	
	def turn
		if @playing == true 
			if tour ‰ 2 == 0 
				puts "c est à #{$joueur1} de jouer, sur quelle case veux tu jouer ?"
				$player_entrance = gets.chomp.to_i
				#créer une fonction qui verifie que la case soit valable 
			else
				puts "c est à #{$joueur2} de jouer sur quelle case veux tu jouer ? "
				$player_entrance = gets.chomp.to_i
			end
		
	
		elsif @victoire == true
			puts "La partie est finit le #{}"
		else @match_nul == true
			puts "La partie est finie aucun joueur n'a finis à ce départager "
		end

	end

end  



puts "Bonjour Bienvenue dans cette partie de morpion, quel est le nom du joueur1 ?"
$joueur1 = gets.chomp
puts "Quel est le nom du joueur 2 ?"
$joueur2 = gets.chomp
=end


