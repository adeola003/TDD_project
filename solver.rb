require 'rspec'

# This class provides methods for solving mathematical problems.
class Solver
  def self.factorial(num)
    raise ArgumentError, 'Factorial is not defined for negative integers.' if num.negative?

    return 1 if num.zero?

    result = 1
    (1..num).each { |i| result *= i }
    result
  end

  def self.reverse(word)
    word.reverse
  end

  def self.fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    num.to_s
  end
end
