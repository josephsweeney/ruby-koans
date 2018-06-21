# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def num_equal(a, b, c)
  n = 0
  if a == b
    n = 2
  end
  if b == c
    n = n == 0 ? 2 : 3
  end
  if n == 0 && a == c
    n = 2
  end
  n
end

def check_sides(a, b, c)
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "Sides must be strictly positive"
  end
  if a+b<=c || a+c<=b || b+c<=a
    raise TriangleError, "Triangle inquality does not hold"
  end
end

def triangle(a, b, c)
  check_sides(a, b, c)
  n = num_equal(a, b, c)
  if n == 0
    :scalene
  elsif n == 2
    :isosceles
  elsif n == 3
    :equilateral
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
