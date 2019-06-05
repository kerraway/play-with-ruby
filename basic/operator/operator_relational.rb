# 关系运算符
a = 10
b = 20
c = 10.0
d = 'hello'
e = 'hello'

puts a == b
puts a != b
puts a > b
puts a < b
puts a >= b
puts a <= b
puts a <=> b            # 船型运算符（联合比较运算符），两者相等返回 0，前者大于后者，返回 1，前者小于后者，返回 -1
puts (1...10) === 5     # 用于测试 case 语句的 when 子句内的相等
puts a.eql?(c)          # 如果接收器和参数具有相同的类型和相等的值，返回 true
puts d.equal?(e)        # 如果接收器和参数具有相同的对象 id，则返回 true
