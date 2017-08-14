class Bankaccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance -= amount
  end

  def gain_interest
    @balance * (@interest_rate)
  end

end


account_balance = Bankaccount.new(0, 0.03)

puts "Your initial balance is #{account_balance.balance}"
puts "Your interest rate is #{account_balance.interest_rate}"

puts "What would you like to do? (deposit, withdrawal, check interest earned, end)"
action_input = gets.chomp

until action_input == "end"

  if action_input == "deposit"

    puts "How much would you like to deposit?"
    deposit_input = gets.chomp.to_i
    account_balance.deposit(deposit_input)
    puts "Your new balance is #{account_balance.balance}."
    puts "What would you like to do? (deposit, withdrawal, check interest earned, end)"
    action_input = gets.chomp

  elsif action_input == "withdrawal"

    puts "How much would you like to withdraw?"
    withdrawal_input = gets.chomp.to_i
    account_balance.withdrawal(withdrawal_input)
    puts "Your new balance is #{account_balance.balance}."
    puts "What would you like to do? (deposit, withdrawal, check interest earned, end)"
    action_input = gets.chomp

  elsif action_input == "check interest earned"

    puts "Your interest earned is #{account_balance.gain_interest}"
    puts "What would you like to do? (deposit, withdrawal, check interest earned, end)"
    action_input = gets.chomp

  else
    puts "Invalid option. Please enter one of the following options: (deposit, withdrawal, check interest earned, end)"
    action_input = gets.chomp

  end
end
# account_balance.deposit(10000)
# puts "Your new balance is #{account_balance.balance}."

# account_balance.withdrawal(2500)
# puts "Your new balance is #{account_balance.balance}."
#
# puts "Your interest earned is #{account_balance.gain_interest}"
