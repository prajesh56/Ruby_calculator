class Calculator
    def initialize(num1,num2=0)
        @a = num1
        @b = num2
    end
    def Addition
      @a + @b
    end
    def Subtraction
        @a - @b
    end
    def Multiplication
        @a * @b
    end
    def Division
        @a / @b
    end
    def Square
        @a**2
    end
    def Cube
        @a**3
    end
end

#displaying operation that can be done in calculator
operation = %w(Addition Subtraction Multiplication Division Square Cube)
puts "You can perform following operation in this calculator"
operation.each_with_index do |a ,index|
    puts "#{index+1}. #{a}"
end

#choosing operation in calculator
puts "Choose the operation you want to perform (1-6):"
operation = gets.to_i
case operation
when 1..4
    puts "Enter two numbers"
    num1 = gets.to_i
    num2 = gets.to_i
when 5..6
    puts "Enter a numbers"
    num1 = gets.to_i
else 
    puts "Error you need to enter valid operation"
end

case operation
when 1
    object = Calculator.new(num1, num2)
    puts"The addition of #{num1} and #{num2} is #{object.Addition} "
when 2
    object = Calculator.new(num1, num2)
    puts"The subtraction of #{num1} and #{num2} is #{object.Subtraction} "
when 3
    object = Calculator.new(num1, num2)
    puts"The multiplication of #{num1} and #{num2} is #{object.Multiplication} "
when 4
    object = Calculator.new(num1, num2)
    puts"The division of #{num1} and #{num2} is #{object.Division} "
when 5
    object = Calculator.new(num1, num2)
    puts"The square of #{num1} is #{object.Square} "
when 6
    object = Calculator.new(num1, num2)
    puts"The cube of #{num1} is #{object.Cube} "
else
    
end