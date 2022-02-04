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
        @a/ @b
    end
    def Square
        @a**2
    end
    def Cube
        @a**3
    end
    
    def operation_again
        puts "Do you want to perform more operations(Y/N):"
        want = gets[0].downcase
        puts want
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
    operation = gets.to_i
    case operation
        when 1..4
            puts "Enter two numbers"
            num1 = gets.to_f
            num2 = gets.to_f
        when 5..6
            puts "Enter a numbers"
            num1 = gets.to_f
        else 
            puts "Error you need to enter valid operation"
            break
    end
    object = Calculator.new(num1, num2)
    case operation
        when 1
            puts"The addition of #{num1} and #{num2} is #{object.Addition} "
        when 2
            puts"The subtraction of #{num1} and #{num2} is #{object.Subtraction} "
        when 3
            puts"The multiplication of #{num1} and #{num2} is #{object.Multiplication} "
        when 4
            puts"The division of #{num1} and #{num2} is #{object.Division} "
        when 5
            puts"The square of #{num1} is #{object.Square} "
        when 6
            puts"The cube of #{num1} is #{object.Cube} "
        else
            break
    end  
end while object.operation_again #this is end point of calculator

