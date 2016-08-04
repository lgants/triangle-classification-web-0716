class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one,length_two,length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    sides = [length_one,length_two,length_three].sort
    raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
    return :equilateral if sides.uniq.length  == 1
    return :isosceles if sides.uniq.length  == 2
    :scalene
  end
end

class TriangleError < StandardError
end
