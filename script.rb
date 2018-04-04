class Account
  attr_reader :name, :balance
  def initialize(name,balance=100)
    @name = name
    @balance = balance
  end
  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: $#{@balance}"
      else
      puts pin_error
    end
  end
  public
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance - amount
       puts "Withdrew #{amount}. New balance: $#{@balance}."
    end
    else
    puts pin_error
  end
  private
  def pin
    @pin = 1234
  end
  private
	def pin_error
    return "Access denied: incorrect PIN."
  end
end
