class Account
  attr_accessor :pin_code, :balance, :account_status, :owner
  def initialize(attrs = {})
    @pin_code = rand(1000..9999)
    @balance = 0
    @account_status = :active
    @exp_date = '12/18'
    set_owner(attrs[:owner])
  end

  def deactivate
    @account_status = :deactivated
  end

  private

  def set_owner(obj)
    obj == nil ? missing_owner : @owner = obj
  end

  def missing_owner
    raise "An Account owner is required"
  end
end
