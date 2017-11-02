
class Account
  require 'date'
  attr_accessor :balance, :account_status
  attr_reader :pin_code, :exp_date, :owner
  STANDARD_VALIDITY_YRS = 5
  def initialize(attrs = {})
    @pin_code = rand(1000..9999)
    @balance = 0
    @account_status = :active
    set_expire_date
    set_owner(attrs[:owner])
  end

  def deactivate
    @account_status = :deactivated
  end

  private

  def set_expire_date
    @exp_date = Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
  end

  def set_owner(obj)
    obj.nil? ? missing_owner : @owner = obj
  end

  def missing_owner
    raise 'An Account owner is required'
  end
end
