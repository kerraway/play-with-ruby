# defined? 运算符
# defined? 是一个特殊的运算符，以方法调用的形式来判断传递的表达式是否已定义。如果已定义，返回表达式的描述字符串，否则返回 nil。
foo = 40
puts defined? foo   # local-variable
puts defined? $_    # global-variable
puts defined? bar   # nil

def method1
  # do nothing
end
puts defined? method1     # method
puts defined? puts        # method
puts defined? puts(foo)   # method
puts defined? puts(bar)   # bar 未定义，nil

puts defined? super       # 如果存在可被 super 用户调用的方法，则为 true

puts defined? yield       # 如果已传递代码块，则为 true
