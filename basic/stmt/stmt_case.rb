# case 语句
#
# case expression
# [when expression [, expression ...] [then]
#    code ]...
# [else
#    code ]
# end
#
# case 先对一个 expression 进行匹配判断，然后根据匹配结果进行分支选择。
# 它使用 === 运算符比较 when 指定的 expression，若一致的话就执行 when 部分的内容。
#
# 通常我们省略保留字 then。若想在一行内写出完整的 when 式，则必须以 then 隔开条件式和程式区块。
age = 5

case age
when 0..2
  puts 'baby'
when 3..6
  puts 'little child'
when 7..12
  puts 'child'
when 13..18
  puts 'junior'
else
  puts 'adult'
end

# 当case的"表达式"部分被省略时，将计算第一个when条件部分为真的表达式。
foo = false
bar = true
quu = false

case
when foo then puts 'foo is true'
when bar then puts 'bar is true'
when quu then puts 'quu is true'
end
