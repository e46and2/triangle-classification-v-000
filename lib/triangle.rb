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
    if person.class != Person 
      begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    else 
    person.partner = self
  end
  
  class TriangleError < StandardErrod
    def message
      "This is not a triangle. Please try again."
  end
end
