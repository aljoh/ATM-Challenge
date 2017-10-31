require_relative 'account.rb'
class Person
  attr_accessor :name, :cash, :account
  def initialize(name = nil)
    set_name(name)
    @cash = 0
  end

  def create_account
    @account = Account.new({owner: self})
  end

  def withdraw(_)
    raise 'No account present'
  end

  private

  def set_name(name)
    if name == nil
      raise 'A name is required'
    else
      @name = name
    end
  end
end
