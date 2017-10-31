require './lib/person.rb'
require './lib/atm.rb'

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
end
