tour = 0
#on définit les cases du plateau
class BoardCase< Board

	attr_accessor :empty_case, :num


	def initialize
		@empty_case = true
		@num = num
		@all_cases << self
	end	

	def display
		if self.empty_case
			return @num
		elsif self.is_x
			return "x"
		elsif self.is_O
			return "O"
		end
	end

end

	def change_to_x
	@empty_case =false
	@is_x = true
	end

	def change_to_O
	@empty_case =false
	@is_O = true
	end

	

	
end
=end
#on définit l'état du plateau
class Board

	attr_accessor :cases

		def initialize 
			@all_cases = [case1,case2,case3,case4,case5,case6,case7,case8,case9,]
		end

		def to_s

			puts "|#{case1}|#{case2}|#{case3}|"
			puts "|#{case4}|#{case5}|#{case6}|"
			puts "|#{case7}|#{case8}|#{case9}|"
		
		end

		def play

			 #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
		end

		def game_status

			if @all_cases[0].is_x && @all_cases[1].is_x && @all_cases[2].is_x || @all_cases[3].is_x && @all_cases[4].is_x && @all_cases[5].is_x || @all_cases[6].is_x && @all_cases[7].is_x && @all_cases[8].is_x || @all_cases[0].is_x && @all_cases[3].is_x && @all_cases[9].is_x || @all_cases[2].is_x && @all_cases[4].est_x && @all_cases[6].is_x || @all_cases[0].is_x && @all_cases[3].is_x && @all_cases[6].is_x @all_cases[1].is_x && @all_cases[4].is_x && @all_cases[7].is_x @all_cases[2].is_x && @all_cases[5].is_x && @all_cases[8].is_x
				@victory == true 
				puts "Le joueur 1 à gagné"
			elsif @all_cases[0].is_O && @all_cases[1].is_O && @all_cases[2].is_O || @all_cases[3].is_O && @all_cases[4].is_O && @all_cases[5].is_O || @all_cases[6].is_O && @all_cases[7].is_O && @all_cases[8].is_O || @all_cases[0].is_O && @all_cases[3].is_O && @all_cases[9].is_O || @all_cases[2].is_O && @all_cases[4].is_O && @all_cases[6].is_O || @all_cases[0].is_O && @all_cases[3].is_O && @all_cases[6].is_O || all_cases[1].is_O && @all_cases[4].is_O && @all_cases[7].is_O || @all_cases[2].is_O && @all_cases[5].is_O && @all_cases[8].is_O
				@victory == true				
				puts "Le joueur 2 à gagné"			
			elsif tour > 9 && @victory == false
				self.@draw
			end
		end
		def victory
			@playing =
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


