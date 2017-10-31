require './lib/person.rb'
require './lib/atm.rb'
require './lib/account.rb'
describe Person do
  subject { described_class.new(name: 'Thomas') }

  it 'is expected to have a :name on initialize' do
    expect(subject.name).not_to be nil
  end
  it 'is expected to raise error if no name is set' do
    expect { described_class.new }.to raise_error 'A name is required'
  end
  it 'has a :cash attribute value 0 on initialize' do
    expect(subject.cash).to eq 0
  end
  it 'has an :account attribute' do
    expect(subject.account).to be nil
  end
  describe 'can create an Account' do
    before { subject.create_account }
    it 'of Account class' do
      expect(subject.account).to be_an_instance_of Account
    end
  end
end
