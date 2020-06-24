#COMP 348 ASSIGNMENT 3
#WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
#DUE DATE: June 17th 2020
require_relative 'Shape'
class Ellipse < Shape
  def initialize(a, b)
    super()
    @a = a
    @b = b
  end

  def area()
    @area = Math::PI * (@a) * (@b)
    return @area
  end  

  def eccentricity()
    @e = Math.sqrt(((@a) * (@a)) - ((@b) * (@b)))
    return @e
  end  

end