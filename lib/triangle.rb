class Triangle
  attr_accessor :l1, :l2, :l3, :equilateral, :isosceles, :scalene
  
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end
  
  def kind(l1, l2, l3)
  l1, l2, l3 = [l1, l2, l3].sort
  raise TriangleError if a <= 0 or a + b <= c
  return :equilateral if a == c
  return :isosceles if a == b or b == c
  return :scalene
  end
  
  
  class TriangleError < StandardError
    def message
      "This is not a triangle. Please try again."
  end
end
end
