require 'rspec'
require_relative 'calculator.rb'

 
describe Calculator do
    it 'creates a new class of Calculator' do
        naya = Calculator.new (1)
        
        expect(naya).to be_kind_of(Calculator)
    end
end
