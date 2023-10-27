# After refactoring
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
	# 1 - Refactor unless and if
  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." if n <= 0
	# 2 - 'return' wasn't needed
	Prime.first n
end

first_n_primes(10)

=begin // Before refactoring
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
	unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  return Prime.first n
end

first_n_primes(10)
=end