# 方法返回值
# Ruby 中的每个方法默认都会返回一个值。这个返回的值是最后一个语句的值。例如：
#
# def test
#    i = 100
#    j = 10
#    k = 0
# end
#
# 在调用这个方法时，将返回最后一个声明的变量 k。
#
# Ruby return 语句
# Ruby 中的 return 语句用于从 Ruby 方法中返回一个或多个值。
#
# return [expr[`,' expr...]]
#
# 如果给出超过两个的表达式，包含这些值的数组将是返回值。如果未给出表达式，nil 将是返回值。
def method_with_multiple_rets
  a = 1
  b = 2
  # 隐式返回
  [a, b]
end

res1, res2 = method_with_multiple_rets
puts "res1 = #{res1}, res2 = #{res2}"


def method_without_ret
  puts 'method without returns'
end

puts method_without_ret.class # NilClass