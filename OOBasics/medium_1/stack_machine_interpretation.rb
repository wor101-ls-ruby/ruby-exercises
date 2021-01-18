class InvalidInputCommand < StandardError
 attr_reader :token
  
  def initialize(token)
    @token = token
  end
  
  def to_s
    "Invalid token: #{token}"
  end
end
  
class EmptyStackError < StandardError
  def to_s
    "Empty stack!"
  end
end

class Minilang
  attr_reader :commands
  
  def initialize(commands)
    @commands = commands

  end
  
  def eval(formating = nil)
    @register = 0
    @stack = []
    if formating
      array_of_commands = format(@commands, formating).split
    else
      array_of_commands = @commands.split
    end
    
    array_of_commands.each do |command|
      begin
        if command.match?(/\d/)
          add_to_register(command.to_i)
        else
          case command
          when 'PUSH' then push
          when 'ADD' then add
          when 'SUB' then subtract
          when 'MULT' then multiply
          when 'DIV' then divide
          when 'MOD' then modulus
          when 'POP' then pop_stack
          when 'PRINT' then print_register
          else raise InvalidInputCommand, command
          end
        end
      rescue InvalidInputCommand => e
        puts e.message
        break
      rescue ZeroDivisionError => e
        puts "ZeroDivisionError!!!"
        break
      rescue EmptyStackError => e
        puts e.message
        break
      end
    end
  end
  
  private
  # attr_accessor :register, :stack
  
  
  def add_to_register(integer)
    @register = integer
  end
  
  def push
    @stack << @register
  end
  
  def add
    raise EmptyStackError if @stack.empty?
    @register += @stack.pop
  end
  
  def subtract
    raise EmptyStackError if @stack.empty?
    @register -= @stack.pop
  end
  
  def multiply
    raise EmptyStackError if @stack.empty?
    @register *= @stack.pop
  end
  
  def divide
    raise EmptyStackError if @stack.empty?
    @register /= @stack.pop
  end
  
  def modulus
    raise EmptyStackError if @stack.empty?
    @register %= @stack.pop
  end
  
  def pop_stack
    raise EmptyStackError if @stack.empty?
    @register = @stack.pop
  end
  
  def print_register
    puts @register
  end
  
end
  






=begin
Write a class that implements a miniature stack-and-register-based programming language that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value
All operations are integer operations (which is only important with DIV and MOD).

All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument. Your program should produce an error if an unexpected item is present in the string, or if a required stack value is not on the stack when it should be (the stack is empty). In all error cases, no further processing should be performed on the program.

You should initialize the register to 0
=end



Minilang.new('PRINT').eval
# 0


Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15


Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)

CENTIGRADE_TO_FAHRENHEIT =
  '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'
minilang = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
minilang.eval(degrees_c: 100)
# 212
minilang.eval(degrees_c: 0)
# 32
minilang.eval(degrees_c: -40)
# -40
# -40