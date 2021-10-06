



# def give_step(result)
#   if (5..6).include? result
#     stair_number += 1
#     puts "=> Super! Tu montes d'une marche :D"
#   elsif result = 1
#     stair_number -= 1
#     puts "=> Ow... Tu redescends d'un cran... ;( "  
#   else
#     puts "=> Rien ne se passe, tu restes où tu es"
#   end
# end

# def finish_game
#   if stair_number = 10
#     puts "Wow, ça y est le succès est à toi ! :D"
#   else
#     give_step(result)
#   end
# end


def prompt(text)
  puts text
  puts ">"
  return gets.chomp()
end

def get_dice_value
  # Un jet de dès au hasard entre 1 et 6--> result
  return prompt("Combien as-tu obtenu au dé ?").to_i()
#  On retourne le return de la méthode prompt
end

def check_result(r, current_stair, niveau)
  new_stair = current_stair
  
  if (!((1..6).include? r))
    puts "Bizarre ton dé !"
    return new_stair
  end

  if (((5..6).include? r) && new_stair < 10)
    new_stair += 1
    puts "=> Super! Tu montes d'une marche :D"
  
  elsif (r == 1 && new_stair > 0)
    new_stair -= 1
    puts "=> Ow... Tu redescends d'un cran... ;( "
  else
    puts "=> Rien ne se passe, tu restes où tu es"
  end

  puts "Tu es sur la #{new_stair}ème marche!"
  puts "Il te reste #{niveau - new_stair} marches."
  
  return new_stair
end

def game
  stair_number = 0
  level = prompt("Choisis ton niveau").to_i()

  puts "Hey salut!"
  puts "Es-tu prêt  gravir les marches du succès ? "
  puts "Tu en as #{level} à monter (mais ce n'est pas si facile!)"

  while (stair_number < level)
    diceResult = get_dice_value()
    stair_number = check_result(diceResult, stair_number,level)
    
  end

  puts "Bravo, tu as gagné! "

end

game()
