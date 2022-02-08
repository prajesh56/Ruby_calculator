require 'rspec'
require'./calculator.rb'

 
describe Calculator do
  it 'creates a new class of Calculator' do
    naya = Calculator.new (1)
    expect(naya.class).to eql(Calculator)
  end
end
