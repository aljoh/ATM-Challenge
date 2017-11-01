require './lib/account.rb'

describe Account do
  let(:person) { instance_double('Person', name: 'Thomas') }
  subject { described_class.new({owner: person}) }
  it 'account has an owner' do
    expect(subject.owner).to eq person
  end
  it 'it raises an error if no owner is set' do
    expect { described_class.new}.to raise_error 'An Account owner is required'
  end
  it 'it has a 4 digit pin-code on initialize' do
    expect(subject.pin_code.to_s.length).to eq 4
  end
  it 'it has a balance of 0$ on initialize' do
    expect(subject.balance).to eq 0
  end
  it 'it has account status :active on initialize' do
    expect(subject.account_status).to eq :active
  end
  it 'deactivates account with deactivate method' do
    expect(subject.deactivate).to eq :deactivated
  end
  it 'has an expiry date on initialize' do
    expected_date = Date.today.next_year(5).strftime('%m/%y')
    expect(subject.exp_date).to eq expected_date
  end
end
