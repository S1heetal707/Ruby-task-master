require 'csv'

class Function   

  def log_in(user)
    CSV.foreach('my_task.csv', 'r', headers => true) do |row|
     #check the user is valid, else error
      if row[0] == uname && row[1] == pwd
        puts "succesfully login"
        ATMSystem.main_menu  
      end
    end

    if login == false
      puts "invalid credentials."
      Login.log_menu
    end   
 end
end