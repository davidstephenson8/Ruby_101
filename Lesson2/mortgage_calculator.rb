=begin

P 
inputs = loan amount, APR, loan duration
outputs = monthly interest rate, loan duration in months, monthly payment

questions

If someone inputs the duration of the loan in years can we translate that? 

E

what happens if zeros and nils are put in?

D
A
C

=end

require 'yaml'
message = YAML.load_file(mortgage_messages.yml)

puts(message)

def prompt(message)
	puts "$$$$ #{message}"
end



monthly_payment = loan_amount * (monthly_interest_rate/ ( 1= (1 + monthly_interest_rate)**(-loan_duration)))