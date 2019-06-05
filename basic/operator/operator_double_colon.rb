# 双冒号运算符 ::
# 可以使用类或模块名称和两个冒号 :: 来引用类或模块中的常量。
# :: 是一元运算符，允许在类或模块内定义常量、实例方法和类方法，可以从类或模块外的任何地方进行访问。
# 在 Ruby 中，类和方法也可以被当作常量。
# 如果 :: 前的表达式为类或模块名称，则返回该类或模块内对应的常量值；如果 :: 前未没有前缀表达式，则返回主Object类中对应的常量值。

COUNT = 0           # 设置全局计数为 1，定义在主 Object 类上
module Foo
  COUNT = 2         # 设置局部计数为 2
end
puts COUNT          # 这是全局常量
puts Object::COUNT  # 也可以使用 Object 类来访问全局常量
puts Foo::COUNT     # 这是 "Foo" 的局部常量


puts '----------------------'


CONST = 'global constant'
class InsideOne
  CONST = proc {'InsideOne constant'}

  def where_is_my_const
    ::CONST + ' & InsideOne constant'
  end
end
class InsideTwo
  CONST = 'InsideTwo constant'

  def where_is_my_const
    CONST
  end
end

puts CONST
puts Object::CONST
# 打印 #<Proc:0x00007fdac3821180@/Users/xiaoke/Workspace/Mine-Ruby/play-with-ruby/basic/operator/operator_double_colon.rb:21>
puts InsideOne::CONST
puts InsideTwo::CONST

puts InsideOne.new.where_is_my_const
puts InsideTwo.new.where_is_my_const