#COMP 348 ASSIGNMENT 3
#WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
#DUE DATE: June 17th 2020
class Shape
  def initialize()
    @name = "#{self.class.name}"
    @perimeter ="undefined"
    @area="undefined"
  end

  def print()
    puts "#@name, perimeter: #@perimeter, area: #@area"
  end 

  def perimeter()
    return nil
  end  

  def area()
    return nil
  end

end

