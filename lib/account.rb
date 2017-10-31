class Account
  attr_accessor :pin_code
  def initialize
    @pin_code = rand(1000..9999).to_s
  end
end
