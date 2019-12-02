class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  @@all = []
  
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @@all << self
  end
  
  def kind
    if 
      @side_3 == @side_2 && @side_2 == @side_1
      :equilateral
    elsif
      @side_1 == @side_2 || @side_2 == @side_3 || @side_3 == @side_1
      :isosceles
    elsif
      @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      :scalene
    end 
    end
    
  class TriangleError < StandardError
    # triangle error code
  end
end