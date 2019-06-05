# 赋值运算符
a = 10
puts a

a += 1
puts a

a -= 2
puts a

a *= 3
puts a

a /= 2
puts a

a %= 5
puts a

a **= 3
puts a

# 并行赋值
x, y, z = 10, 20, 30
puts "#{x}, #{y}, #{z}"

# 并行赋值在交换两个变量的值时，很方便
puts "x = #{x}, y = #{y}"
x, y = y, x
puts "x = #{x}, y = #{y}"
