# if...else 语句
#
# if conditional [then]
#       code...
# [elsif conditional [then]
#       code...]...
# [else
#       code...]
# end
#
# 通常我们省略保留字 then 。若想在一行内写出完整的 if 式，则必须以 then 隔开条件式和程式区块。
score = 70
if score <= 60
  puts '不及格'
elsif score < 90
  puts '良好'
else
  puts '优秀'
end

a = 4
if a > 1 then puts "#{a} is greater than 1." end


# if 修饰符
#
# code if condition
#
# if修饰词组表示当 if 右边之条件成立时才执行 if 左边的式子。即如果 conditional 为真，则执行 code。
age = 19
puts "Adult" if age >= 18   # Adult
puts "Child" if age < 18    # do nothing