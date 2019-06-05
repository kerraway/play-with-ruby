# 可变数量的参数
# 假设您声明了一个带有两个参数的方法，当您调用该方法时，您同时还需要传递两个参数。
def method_with_mutable_args(*nums)
  sum = 0
  nums.each {|num| sum += num}

  # 显式返回
  # return sum

  # 隐式返回
  sum
end

sum = method_with_mutable_args 1, 2, 3, 4, 5
puts "sum = #{sum}"
