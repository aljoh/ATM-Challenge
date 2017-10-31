class Account
  attr_accessor :pin_code, :balance, :account_status
  def initialize
    @pin_code = rand(1000..9999)
    @balance = 0
    @account_status = :active
  end

  def deactivate
    @account_status = :deactivated
  end
end
