class Calculator
    def initialize(num1,num2=0)
        @a = num1
        @b = num2
    end
    def addition
      @a + @b
    end
    def subtraction
        @a - @b
    end
    def multiplication
        @a * @b
    end
    def division
        @a/ @b
    end
    def square
        @a**2
    end
    def cube
        @a**3
    end
    
    def operation_again
        puts "Do you want to perform more operations(Y/N):"
        want = gets[0].downcase
        
        case want
        when 'y'
            return true
        when 'n'
            puts "Bye Bye"
            return false
        else
            puts "Sorry, invalid choice, Bye Bye"
        end
    end
end

#Calculator
begin #this points start of operation in calcultor
    #displaying operation that can be done in calculator
    operation = %w(Addition Subtraction Multiplication Division Square Cube)
    puts "\nYou can perform following operation in this calculator"
    operation.each_with_index do |a ,index|
        puts "#{index+1}. #{a}"
    end

#choosing operation in calculator
    puts "Choose the operation you want to perform (1-6):"
    choice = gets.to_i
    selected = operation[choice-1]
    if selected == nil
        puts "Error you need to enter valid operation"
        break
    else
        puts "#{selected} operation is selected."
    end
    case choice
        when 1..4
            puts "Enter two numbers"
            num1 = gets.to_f
            num2 = gets.to_f
        when 5..6
            puts "Enter a numbers"
            num1 = gets.to_f
    end

#object creation
    object = Calculator.new(num1, num2)
    case choice
        when 1
            puts"The addition of #{num1} and #{num2} is #{object.addition} "
        when 2
            puts"The subtraction of #{num1} and #{num2} is #{object.subtraction} "
        when 3
            puts"The multiplication of #{num1} and #{num2} is #{object.multiplication} "
        when 4
            puts"The division of #{num1} and #{num2} is #{object.division} "
        when 5
            puts"The square of #{num1} is #{object.square} "
        when 6
            puts"The cube of #{num1} is #{object.cube} "
        else
            break
    end  
end while object.operation_again #this is end point of calculator

