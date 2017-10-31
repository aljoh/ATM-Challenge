require './lib/account.rb'

describe Account do
  it 'it has a 4 digit pin-code on initialize' do
    expect(subject.pin_code.to_s.length).to eq 4
  end
  it 'it has a balance of 0$ on initialize' do
    expect(subject.balance).to eq 0
  end
end
