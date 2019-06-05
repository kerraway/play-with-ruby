# unless 语句
#
# unless conditional [then]
#    code
# [else
#    code ]
# end
#
# unless 式和 if 式作用相反，即如果 conditional 为假，则执行 code。如果 conditional 为真，则执行 else 子句中指定的 code。
a = 101
unless a > 100
  puts "#{a} 小于等于 100"
else
  puts "#{a} 大于 100"
end

a = 0
unless a > 1 then puts "#{a} is not greater than 1." end


# unless 修饰符
#
# code unless conditional
#
# 如果 conditional 为假，则执行 code。
sex = 'male'
puts 'It\'s male.' unless sex != 'male'
puts 'It\'s female.' unless sex != 'female'
