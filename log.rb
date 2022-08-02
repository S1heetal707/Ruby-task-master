$LOAD_PATH << '.'
require 'csv'
require 'byebug'

module LoginModule
  class LoginClass

    def signin
      puts "Account login"
      puts " "
      puts "Enter username"
      @uname = gets.chomp
      puts "Enter email"
      @uemail = gets.chomp
      login
    end

    def login
      login_passed = false
      CSV.foreach("my_task.csv", headers: true) do |row|
        login_passed = row[0] == @uname && row[1] == @uemail
        break if login_passed
      end
      if login_passed != true
        puts "invalid username or password"
        signin
      else
        puts "successfully login"

      end
    end
  end
end

# obj = LoginModule::LoginClass.new
# obj.signin