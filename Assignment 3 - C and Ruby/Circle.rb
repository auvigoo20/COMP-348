#COMP 348 ASSIGNMENT 3
#WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
#DUE DATE: June 17th 2020
require_relative 'Shape'
class Circle < Shape

  def initialize(radius)
    super()
    @radius = radius
  end

  def perimeter()
    @perimeter = 2 * (@radius) * Math::PI
    return @perimeter 
  end  

  def area()
    @area = Math::PI * (@radius) * (@radius)
    return @area
  end

end  
