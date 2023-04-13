require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unknown', classroom = 'Tenth', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    @classroom.students << self
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student1 = Student.new(23, 'Mark', 'Third')
student2 = Student.new(17, 'Sonia', 'Eighth')

# student one
puts student1.name
puts student1.age
puts student1.parent_permission

#  student two
puts student2.name
puts student2.age
puts student2.parent_permission
