# # Block to sign up

# def ask_name
#   puts "Donne ton user_name :"
#   puts ">"
#   user_name = gets.chomp
#   return user_name
# end

# def ask_password
#   puts "Définis un mot de passe : "
#   puts ">"
#   return gets.chomp.to_s
# end

# def signup
#   user_name = ask_name
#   user_password = ask_password
#   return user_name, user_password
# end

# # Block to Log In
# def ask_past_password
#   puts "Hello!"
#   puts "Saisis ton mot de passe:"
#   puts ">"
#   connexion_password = gets.chomp.to_s
#   return connexion_password
#   # ici, on ne retourne que la valeur, 
#   #pas la variable connexion password = la var connexion_password n'existe donc QUE dans cette méthode!
# end

# def try_to_connect(pwd1, pwd2)
#   success_connexion = false
    
#   while pwd1 != pwd2
#     puts "Oops! Tu t'es trompé, retente ta chance :"
#     pwd = gets.chomp
#   end
  
#   sleep 2
#   success_connexion = true
#   puts "Connexion réussie!"
#   return success_connexion
# end

# def login(savedPwd)
#   #la méthode login fonctionnera toujours de la même manière peu importe la string qui sera traitée
#   pwdAttempt = ask_past_password

#   try_to_connect(pwdAttempt, savedPwd)
# end

# # Block PRIVATE ACCESS

# def private_access(user_name, success_connexion)
#   if success_connexion
#     puts "Hello agent #{user_name}," 
#     puts "nous avons une nouvelle mission super secrète pour toi!" 
#     puts "Sauras-tu relever le défis?"
#   end
# end


# # Block Perform

# def perform
#   username, savedPwd = signup
# #  ici on stocke dans username et savedPwd les 2 valeurs retournées par la méthode signup
#   login(savedPwd)
#   private_access(user_name, success_connexion)
# end

# perform

def prompt(text)
  puts text
  puts ">"
  return gets.chomp
end


def askUserName()
  return prompt("[Signup] Votre username ?")
end

def askPwd()
  puts "Pwd:"
  return gets.chomp
end


def perform()

  # SIGN UP
  saved_name = askUserName()
  savedPwd = prompt("[Signup] Votre password ?")

  # LOGIN
  attemptPwd = prompt("[Login] Saisissez votre password")
 
   while savedPwd != attemptPwd
    puts "ERROR"
    attemptPwd = prompt("[Login] Saisissez correctement votre password")
  end

  # SUCCESS
  puts "SUCCES"

end

perform()
