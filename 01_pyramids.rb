def ask_number
  puts "Salut et bienvenue dans ma super pyramide!"
  puts "Combien d'étages souhaites-tu ?"
  print ">"
  user_number = gets.chomp.to_i
  
  return user_number
end

def top_pyramid(user_number)
  loop_top_number = (user_number / 2) + 1
  loop_top_number.times do |blocks_top_number|
    puts (" " * (loop_top_number - blocks_top_number)) + ("*" * blocks_top_number) + "*" + ("*" * blocks_top_number)
  end
end

def down_pyramid(user_number)
  loop_down_number = (user_number / 2)  
    loop_down_number.times do |blocks_down_number|
      blocks_down_number += 1
      puts (" " + " " * (blocks_down_number)) + ("*" * (loop_down_number - blocks_down_number)) + "*" + ("*" * (loop_down_number - blocks_down_number))
    end
end

def show_pyramid(user_number) 
  
  top_pyramid(user_number)

  down_pyramid(user_number)
 
end

def perform  
user_number = ask_number
if user_number%2==0 
 puts "Donne un nombre impair"
  
else
 show_pyramid(user_number)
end

end

perform()