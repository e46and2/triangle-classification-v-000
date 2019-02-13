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
  
  def kind 
    if @l1 == @l2 && @l2 == @l3 && @l3 != 0
      @equilateral
    if @l1 == @l2 || @l2 == @l3 && @l1 != 0 && @l3 != 0 
      @isosceles
    if @l1 + @l2 > @l3 || @l1 + @l3 > @l2 || @l2 + @l3 > @l1 
      @scalene
    else 
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
  end
end
  
  class TriangleError < StandardErrod
    def message
      "This is not a triangle. Please try again."
  end
end
