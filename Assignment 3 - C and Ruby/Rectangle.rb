#COMP 348 ASSIGNMENT 3
#WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
#DUE DATE: June 17th 2020
require_relative 'Shape'
class Rectangle < Shape
  def initialize(height, width)
    super()
    @height = height
    @width = width
  end

  def perimeter()
    if @height.zero? or @width.zero?
      @perimeter = 0
      return @perimeter
    else  
       @perimeter = (2 * (@height)) + (2 * (@width))
       return @perimeter
    end   
    
  end  

  def area()
    @area = (@height) * (@width)
    return @area
  end

end  
