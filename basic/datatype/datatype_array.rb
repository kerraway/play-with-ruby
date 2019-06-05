# 数组字面量通过[]中以逗号分隔定义，且支持range定义。
# （1）数组通过[]索引访问
# （2）通过赋值操作插入、删除、替换元素
# （3）通过+，－号进行合并和删除元素，且集合做为新集合出现
# （4）通过<<号向原数据追加元素
# （5）通过*号重复数组元素
# （6）通过｜和&符号做并集和交集操作（注意顺序）
array = [1, 3.4, 'hello', 'hi']

puts "array's length = #{array.length}"

# 遍历元素
array.each do |val|
  puts val
end

# 遍历元素，方法引用写法
array.each(&method(:puts))
