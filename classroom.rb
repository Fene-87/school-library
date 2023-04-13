class Classroom
    attr_accessor :label
    
    def initialize(label)
        @label = label
        @students = []
    end

    def add_student(student)
        @students << student
        student.Classroom = self
    end
end