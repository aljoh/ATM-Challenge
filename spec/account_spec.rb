require './lib/account.rb'

describe Account do
  it 'it has a 4 digit pin-code on initialize' do
    expect(subject.pin_code.length).to eq 4
  end
end
