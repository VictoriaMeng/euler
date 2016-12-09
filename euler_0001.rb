class SumOfMultiples
  attr_reader :range, :multiples, :factors, :sum

  def initialize 
    @range = (3...1000).to_a
    @factors = [3, 5]
    @multiples = []
  end

  def find_multiples
    range.each { |number| @multiples << number if multiple?(number) }
  end

  def multiple?(number)
    factors.any? { |factor| number % factor == 0 }
  end

  def calculate_sum
    @sum = multiples.reduce(:+)
  end

  def run
    find_multiples
    calculate_sum
  end
end

SumOfMultiples.new.run