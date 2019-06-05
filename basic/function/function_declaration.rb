# 方法
# Ruby 方法与其他编程语言中的函数类似。Ruby 方法用于捆绑一个或多个重复的语句到一个单元中。
# 方法名应以小写字母开头。如果您以大写字母作为方法名的开头，Ruby 可能会把它当作常量，从而导致不正确地解析调用。
# 方法应在调用之前定义，否则 Ruby 会产生未定义的方法调用异常。
#
# def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
#    expr..
# end
#
# 所以，您可以定义一个简单的方法，如下所示：
# def method_name
#    expr..
# end
#
# 您可以定义一个接受参数的方法，如下所示：
# def method_name (var1, var2)
#    expr..
# end
#
# 您可以为参数设置默认值，如果方法调用时未传递必需的参数则使用默认值：
# def method_name (var1=value1, var2=value2)
#    expr..
# end
def method_without_arg
  puts 'method without arg'
end

def method_with_args(name, age)
  puts "name = #{name}, age = #{age}"
end

def method_with_args_default_val(name = "tom", age = 18)
  puts "name = #{name}, age = #{age}"
end

method_without_arg
method_with_args "jack", 16
method_with_args_default_val
method_with_args_default_val "rose", 15