# alias 语句
# 这个语句用于为方法或全局变量起别名。别名不能在方法主体内定义。即使方法被重写，方法的别名也保持方法的当前定义。
#
# 为编号的全局变量（$1, $2,...）起别名是被禁止的。重写内置的全局变量可能会导致严重的问题。
#
# 语法
# alias 方法名 方法名
# alias 全局变量 全局变量
def do_sth
  puts 'do sth.'
end

alias do_sth_alias do_sth

do_sth_alias