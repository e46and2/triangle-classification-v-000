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
  
  def kind() 
    if @l1 <= 0 || @l2 <= 0 || @l3 <=0 
      begin
        raise TriangleError
          rescue TriangleError => error
          puts error.message
      end
    elsif (@l1 == @l2 && @l2 == @l3 && @l3 > 0 && @l2 > 0 && @l1 > 0)
        :equilateral
    elsif (@l1 == @l2 || @l2 == @l3 || @l1 == @l3 && @l1 > 0 && @l3 > 0) 
        :isosceles
    elsif (@l1 + @l2 > @l3 || @l1 + @l3 > @l2 || @l2 + @l3 > @l1 && @l1 > 0 && @l2 > 0 && @l3 > 0 )
        :scalene
    else 
        begin
        raise TriangleError
          rescue TriangleError => error
          puts error.message
      end
   end
end
  
  class TriangleError < StandardError
    def message
      "This is not a triangle. Please try again."
  end
end
end
