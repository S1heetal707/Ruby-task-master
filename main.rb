$LOAD_PATH << '.'
require "byebug"
require "rubytask"
require "log"
include Register
include LoginModule

# creating obj of signup and login
account = Register::CreateAccount.new()
obj = LoginModule::LoginClass.new()


p = "press 1 for signup and 2 for login"
response = gets.chomp

case response
when "1"
  puts "Create new account"
  account.display 
when "2"
  obj.signin
end
