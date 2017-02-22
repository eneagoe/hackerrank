#!/usr/bin/env ruby -w

def in_square?(x1, y1, x2, y2, x3, y3, x, y)
  bax = x2 - x1
  bay = y2 - y1
  dax = x3 - x1
  day = y3 - y1

  return false if ((x - x1) * bax + (y - y1) * bay < 0.0)
  return false if ((x - x2) * bax + (y - y2) * bay > 0.0)
  return false if ((x - x1) * dax + (y - y1) * day < 0.0)
  return false if ((x - x3) * dax + (y - y3) * day > 0.0)

  true
end

w,h = gets.strip.split(' ')
w = w.to_i
h = h.to_i
circleX,circleY,r = gets.strip.split(' ')
circleX = circleX.to_i
circleY = circleY.to_i
r = r.to_i
x1,y1,x3,y3 = gets.strip.split(' ')
x1 = x1.to_i
y1 = y1.to_i
x3 = x3.to_i
y3 = y3.to_i

# center
xc = (x1 + x3)/2.0
yc = (y1 + y3)/2.0

# half diagonal
xd = (x1 - x3)/2.0
yd = (y1 - y3)/2.0

# second corner
x2 = xc - yd
y2 = yc + xd
# fourth corner
x4 = xc + yd
y4 = yc - xd

(0...h).each do |y|
  (0...w).each do |x|
    distance_to_center = Math.sqrt((x - circleX)**2 + (y - circleY)**2)
    if distance_to_center <= r || in_square?(x3, y3, x2, y2, x4, y4, x, y)
      print '#'
    else
      print '.'
    end
  end
  puts
end
