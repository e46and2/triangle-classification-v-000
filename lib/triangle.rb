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
  raise TriangleError
end
  
  
  class TriangleError < StandardError
    def message
      "This is not a triangle. Please try again."
  end
end
end
