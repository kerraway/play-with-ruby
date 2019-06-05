# undef 语句
# 这个语句用于取消方法定义。undef 不能出现在方法主体内。
def say_hello
  puts 'Hello.'
end

puts defined? say_hello

undef say_hello

method_defined = defined? say_hello
puts method_defined         # nil
puts method_defined.class   # NilClass
