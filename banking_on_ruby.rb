# 1 - Creating the Account Class
class Account
  attr_reader :name
  attr_reader :balance

  # balance = 100
  def initialize (name, balance = 100)
    @name = name
    @balance = balance
  end

  # 2 - create private methods
  private
  def pin
    @pin = 1234
  end

  private
  def pin_error
    return "Access denied: incorrect PIN."
  end

  # 3 - create public method to display current account balance
  public
  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: $#{@balance}."
    else
      puts "Incorrect pin!"
    end
  end
  
  # 4 - create public method to withdraw money from account
    public
    def withdraw(pin_number, amount)
      if pin_number == pin
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
        puts "Incorrect pin!"
      end
    end
end

# 5 - create an instance of account
checking_account = Account.new("Tiara", 10000)