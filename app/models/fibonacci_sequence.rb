class FibonacciSequence < ApplicationRecord

	def fibonacci( n )
	    return  n  if n <= 1 
	    fibonacci( n - 1 ) + fibonacci( n - 2 )
	end 
def fibonacci_by_quantidade(quantidade)
	i = 1
	resultado = []
	while i <= quantidade
        resultado << fibonacci(i)
		i += 1
	end
	resultado
end

end
