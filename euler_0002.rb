# start with data set with numbers 1 and 2
# find sum of last 2 numbers
# save sum in data set
# repeat until one sum exceeds 4000000, do not save that sum
# select even numbers in sequence
# find sum of even numbers

class SumOfEvens
  attr_reader :sequence

  def initialize
    @sequence = [1, 2]
  end

  def finish_sequence
    loop do
      number = sequence[-1] + sequence[-2]
      break if number >= 4000000
      @sequence << number
    end
  end

  def sum_of_evens
    @sum_of_evens = sequence.select { |number| number.even? }.reduce(:+)
  end

  def run
    finish_sequence
    sum_of_evens
  end
end

answer = SumOfEvens.new
answer.run

=begin
  answer.sequence

=end

