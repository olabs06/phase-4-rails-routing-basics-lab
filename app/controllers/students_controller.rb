class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        render json: Student.all.order(:grade).reverse
    end
    def highest_grade
        highest = Student.maximum(:grade)
        render json: Student.find_by(grade: highest)
    end
end
