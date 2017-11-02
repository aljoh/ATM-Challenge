require_relative 'account.rb'
require_relative 'atm.rb'
class Person
  attr_accessor :cash
  attr_reader :name, :account
  def initialize(name = nil)
    set_name(name)
    @cash = 0
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def withdraw(arg = {})
    if @account == nil
      missing_account
    else
      withdraw_cash(arg)
    end
  end

  def deposit(amount)
    if @account == nil
      missing_account
    else
      deposit_cash(amount)
    end
  end

  def work
    @cash += 100
  end

  private

  def withdraw_cash(arg)
    if arg[:atm] == nil
      missing_atm
    else
      atm = arg[:atm]
    end
    receit = atm.withdraw(arg[:amount], arg[:pin], arg[:account])
    @cash += receit[:amount] if receit[:status] == true
    receit
  end

  def deposit_cash(amount)
    @cash -=amount
    @account.balance += amount
  end

  def set_name(name)
    if name == nil
      missing_name
    else
      @name = name
    end
  end

  def missing_account
    raise 'No account present'
  end

  def missing_name
    raise 'A name is required'
  end

  def missing_atm
    raise 'An ATM is required'
  end
end
