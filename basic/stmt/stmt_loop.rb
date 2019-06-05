# while 语句
#
# while conditional [do]
#    code
# end
#
# 或者
#
# while conditional [:]
#    code
# end
#
# 当 conditional 为真时，执行 code。
# 语法中 do 或 : 可以省略不写。但若要在一行内写出 while 式，则必须以 do 或 : 隔开条件式或程式区块。
idx = 0
count = 5
while idx < count do
  puts "idx = #{idx}"
  idx += 1
end
puts '----------------------'


# while 修饰符
#
# code while condition
#
# 或者
#
# begin
#   code
# end while conditional
#
# 当 conditional 为真时，执行 code。
# 如果 while 修饰符跟在一个没有 rescue 或 ensure 子句的 begin 语句后面，code 会在 conditional 判断之前执行一次。
idx = 0
puts "idx = #{idx += 1}" while idx < count
puts '----------------------'

idx = 0
begin
  puts "idx = #{idx}"
  idx += 1
end while idx < count
puts '----------------------'


# until 语句
#
# until conditional [do]
#    code
# end
#
# 当 conditional 为假时，执行 code。
# 语法中 do 可以省略不写。但若要在一行内写出 until 式，则必须以 do 隔开条件式或程式区块。
idx = 0
until idx >= count do
  puts "idx = #{idx}"
  idx += 1
end
puts '----------------------'


# until 修饰符
#
# code until conditional
#
# 或者
#
# begin
#    code
# end until conditional
#
# 当 conditional 为 false 时，执行 code。
# 如果 until 修饰符跟在一个没有 rescue 或 ensure 子句的 begin 语句后面，code 会在 conditional 判断之前执行一次。
idx = 0
puts "idx = #{idx += 1}" until idx >= count
puts '----------------------'

idx = 0
begin
  puts "idx = #{idx}"
  idx += 2
end until idx >= count
puts '----------------------'


# for 语句
#
# for variable [, variable ...] in expression [do]
#    code
# end
#
# 先计算表达式得到一个对象，然后针对 expression 中的每个元素分别执行一次 code。
for i in (10..15)
  puts "for loop, i = #{i}"
end
puts '----------------------'


# for...in 循环几乎是完全等价于：
#
# (expression).each do |variable[, variable...]| code end
#
# 但是，for 循环不会为局部变量创建一个新的作用域。
# 语法中 do 可以省略不写。但若要在一行内写出 for 式，则必须以 do 隔开条件式或程式区块。
(20...23).each do |i|
  puts "each loop, i = #{i}"
end
puts '----------------------'


# break 语句
# 终止最内部的循环。如果在块内调用，则终止相关块的方法（方法返回 nil）。
for val in (5..10)
  if val >= 8
    break
  end
  puts "for loop with break, val = #{val}"
end
puts '----------------------'

for val in (10...15)
  break if val >= 12
  puts "for loop with break if, val = #{val}"
end
puts '----------------------'


# next 语句
# 跳到循环的下一个迭代。如果在块内调用，则终止块的执行（yield 表达式返回 nil）。
for val in (1..5)
  # if val == 2
  #   next
  # end
  next if val == 2
  puts "for loop with next if, val = #{val}"
end
puts '----------------------'


# redo 语句
# 重新开始最内部循环的该次迭代，不检查循环条件。如果在块内调用，则重新开始 yield 或 call。
attempt = 0
for val in (10..15)
  puts "for loop with redo, attempt = #{attempt}, val = #{val}"

  # 防止无限循环
  break if attempt > 2

  if val == 12
    attempt += 1
    redo
  end
end
puts '----------------------'


# loop do 语句
idx = 0
loop do
  puts "loop do, idx = #{idx}"
  idx += 1
  break if idx > count
end
puts '----------------------'


# x.times do 语句
5.times do
  puts 'I love ruby.'
end
puts '----------------------'


# x.upto(y)/x.downto(y)/x.step(y, z) 语句
1.upto(4) {|val| puts "val = #{val}"}
puts '----------------------'

# 方法引用
10.downto(7, &method(:puts))
puts '----------------------'

0.step(10, 3, &method(:puts))
puts '----------------------'