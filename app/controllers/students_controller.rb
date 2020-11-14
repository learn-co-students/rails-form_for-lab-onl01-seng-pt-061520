class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :edit]

    def index 
        @student = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def update 
        @student = Student.find(find_student)
        @student.update(student_params)

        redirect_to student_path(@student)
    end
    
    private

    def find_student
        @student = Student.find_by_id(params[:id])
        # redirect_to students_path if !@student
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end
