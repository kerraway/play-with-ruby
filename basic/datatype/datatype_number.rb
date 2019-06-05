# 整型（Integer）分两种，如果在 31 位以内（四字节），那为 Fixnum 实例。如果超过，即为 Bignum 实例。
# Fixnum：- 2 的 30 次方 到 2 的 30 次方 - 1
# Bignum：当整数值大于或等于 2 的 30 次方时（- 2 的 62 次方 到 2 的 62 次方 - 1），会自动转化为 Bignum 类型。
#
# 可以在整数前使用一个可选的前导符号，一个可选的基础指标（0 对应 octal，0x 对应 hex，0b 对应 binary），后跟一串数字。
#
# 下划线字符在数字字符串中被忽略。
#
# 可以获取一个 ASCII 字符或一个用问号标记的转义序列的整数值。
puts 123                      # Fixnum 十进制
puts 1_23                     # Fixnum 十进制，下划线会被忽略
puts -500                     # Fixnum 十进制负数
puts 0377                     # Fixnum 八进制
puts 0xff                     # Fixnum 十六进制
puts 0b1010                   # Fixnum 二进制
puts 'a'.ord                  # 'a' 的字符编码
puts ?\n.ord                  # 换行符（0x0a）的编码
puts 12345678901234567890     # Bignum

# 浮点型（Float）是带有小数的数字。
puts 123.4                    # 浮点数
puts 1.0e6                    # 科学记数法
puts 4E20                     # 科学记数法
puts 4e+20                    # 科学记数法，指数前带符号