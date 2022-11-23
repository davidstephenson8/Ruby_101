Kernel.puts(">> Give two numbers that we'll use to perform calculations on")
number1 = Kernel.gets().chomp().to_i()
number2 = Kernel.gets().chomp().to_i()

Kernel.puts(">> What function would you like to perform on these numbers? Subtraction, multiplication, division or addition?")
operation = Kernel.gets().chomp().downcase()

if operation == "subtraction"
	puts number1 - number2

elsif operation == "division"
	puts number1.to_f / number2.to_f	
elsif	operation == "addition"
	puts number1 + number2
else
	puts number1 * number2
end

