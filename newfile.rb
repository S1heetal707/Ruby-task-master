# $LOAD_PATH << '.'
# require "byebug"
# require "rubytask"
# require "log"
# include Register
# include LoginModule

# # creating obj of signup and login
# account = Register::CreateAccount.new()
# obj = LoginModule::LoginClass.new()

# p = "press 1 for signup and 2 for login"
# response = gets.chomp

# case response
# when "1"
# 	puts "Create new account"
#   account.display 
# when "2"
#   obj.signin
# end

module MainModule
	class MainClass

		balance = Array.new
		history = Array.new

		def initialize(balance, history,sum)
			@balance = balance
			@history = history
			@sum = sum
		end

		def bal(balance, history)
			puts "your balance is #{@balance+@sum}"
			puts welcome(balance, history)
		end

		def his(balancel,history)
			p "this is your history"
			p history
			p bal(@balance,@history)
		end

		def dep(balance,history)
			p "How much u like to deposite"
			input = ""
			input = gets.chomp.to_i
			p "You are depositing #{input} Rs"
			@balance = @balance+input
			history << input
			puts bal(@balance,@history)
		end

		def withd(balance,history)
			p "How much u want to withdraw"
			input = ""
			input = gets.chomp.to_i
			if @balance < input
				puts error
			else
				p "You want to withdraw #{input}"
				@balance = @balance-input
				@history << -input
				puts bal(@balance,@history)
		  end
		end

		def exit
			p "Exit from the system"
		end

		def error
		  p "Error, invalid selection ,pls try again"
		end

		def welcome(balance,history)
			p "Welcome! pls enter b for balance check, w for withdraw, d for deposite and e for exit"
			response = gets.chomp.downcase
			case response
			when 'b'
			  bal(@balance,@history)
		  when 'w'
		  	withd(@balance,@history)
		  when "d"
		  	dep(@balance,@history)
		  when "e"
		  	exit
		  end
		end
  end
end

mainobj = MainModule::MainClass.new(0,0,0)
mainobj.welcome(@balance,@history)