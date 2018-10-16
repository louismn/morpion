tour = 0

class BoardCase

	attr_accessor :case_value, :case_number


	def initialize
		@case_value = case_value
		@case_number = case_number	
	end	

	def etat_case
		
		if $player_entrance == @case_value 
		end
	end

	def to_s
		case_value
	end
end

class Jeu 

attr_accessor :playing, :match_nul, :victoire 

	def initialize
		@playing =  true
		@match_nul = false
		@victoire = false
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

class Board

	attr_accessor :cases

		def initialize 
			@cases = [case1,case2,case3,case4,case5,case6,case7,case8,case9,]
		end

		def presentation

			puts "|#{case1}|#{case2}|#{case3}|"
			puts "|#{case4}|#{case5}|#{case6}|"
			puts "|#{case7}|#{case8}|#{case9}|"
		end


end

puts "Bonjour Bienvenue dans cette partie de morpion, quel est le nom du joueur1 ?"
$joueur1 = gets.chomp
puts "Quel est le nom du joueur 2 ?"
$joueur2 = gets.chomp


