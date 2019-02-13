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
  
  def kind()
  l1, l2, l3 = [l1, l2, l3].sort
  if a <= 0 or a + b <= c
    raise TriangleError 
  elsif a == c
    return :equilateral 
  elsif a == b or b == c
    return :isosceles 
  else
    :scalene
  end
end
  
  
  class TriangleError < StandardError
    def message
      "This is not a triangle. Please try again."
  end
end
end
