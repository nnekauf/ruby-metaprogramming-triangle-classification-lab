class Triangle

  attr_accessor :side1, :side2, :side3

  @@all = []

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @@all << @side1
    @@all << @side2
    @@all << @side3
    #@@all.sort
  end

  def kind
      if invalid_triangle
      raise TriangleError
      elsif @side1 == @side2 && @side1 == @side3
        :equilateral
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
      elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
        :scalene
      end
  end
  def invalid_triangle
      if @@all.any? {|side| side == 0} #@side1 == 0 || @side2 == 0 || @side3 == 0  #
        raise TriangleError
      elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side3 + @side2 <= @side1
        raise TriangleError
      end
  end

  class TriangleError < StandardError
    def message
      "no"
    end
  end

end
