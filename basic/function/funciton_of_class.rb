# 类方法
# 当方法定义在类的外部，方法默认标记为 private。另一方面，如果方法定义在类中的，则默认标记为 public。
# 
# 方法默认的可见性和 private 标记可通过模块（Module）的 public 或 private 改变。
# 
# 当你想要访问类的方法时，您首先需要实例化类。然后，使用对象，您可以访问类的任何成员。
# 
# Ruby 提供了一种不用实例化即可访问方法的方式。
class Student
  def study
    puts 'Student study...'
  end

  def self.exam
    puts 'Student exam...'
  end
end

# 对象访问方法
student = Student.new
student.study

# 类方法方法
Student.exam