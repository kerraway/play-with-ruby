# 字符串简单地说是一个 8 位字节序列，它们是类 String 的对象。
# 双引号标记的字符串允许替换和使用反斜线符号，单引号标记的字符串不允许替换，且只允许使用 \\ 和 \' 两个反斜线符号。
puts 'escape using "\\".'
puts 'That\'s right.'

str = 'Hello world'
puts str
puts str.upcase
puts str.downcase
puts str[1, 5]


# 可以使用序列 #{ expr } 替换任意 Ruby 表达式的值为一个字符串。在这里，expr 可以是任意的 Ruby 表达式。
puts "1 + 2 + 3 = #{1 + 2 + 3}"
name = 'Tom'
puts "#{name} love ruby."