class Account
  attr_accessor :pin_code, :balance
  def initialize
    @pin_code = rand(1000..9999)
    @balance = 0
  end
end
