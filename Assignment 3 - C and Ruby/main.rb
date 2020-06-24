#COMP 348 ASSIGNMENT 3
#WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
#DUE DATE: June 17th 2020
require_relative 'Shape.rb'
require_relative 'Circle.rb'
require_relative 'Rectangle.rb'
require_relative 'Ellipse.rb'

$shapes = 0
$rectangles = 0
$circles = 0
$ellipses = 0


File.foreach("file.txt"){
  |line|
  if line.include? "shape"
    s = Shape.new()
    $shapes += 1
    s.print()
  elsif line.include? "rectangle"
    arr = line.split(' ')
    if arr[1].to_i < 0 or arr[2].to_i < 0 #.to_i is used to convert the string to an int
      puts "Error: Invalid Rectangle"
    else  
    r = Rectangle.new(arr[1].to_i, arr[2].to_i)
    r.perimeter()
    r.area()
    $shapes += 1
    $rectangles += 1
    r.print()
    end
  elsif line.include? "circle"
    arr = line.split(' ')
    if arr[1].to_i < 0 or arr[2].to_i < 0
      puts "Error: Invalid Circle"
    else  
    c = Circle.new(arr[1].to_i)
    c.perimeter()
    c.area()
    $shapes += 1
    $circles += 1
    c.print()
    end
  elsif line.include? "ellipse"
    arr = line.split(' ')
    if arr[1].to_i < 0 or arr[2].to_i < 0
      puts "Error: Invalid Ellipse"
    else  
    e = Ellipse.new(arr[1].to_i, arr[2].to_i)
    e.area()
    $shapes += 1
    $ellipses += 1
    e.print()
    end
  end  
}

hash = {"Shape(s)" => $shapes, "Rectangle(s)" => $rectangles, "Circle(s)" => $circles, "Ellipse(s)" => $ellipses }
puts "\nStatistics:"
hash.each_pair do |key, value|
  puts "\t#{key}: #{value}"
end  