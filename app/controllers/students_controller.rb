class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(sc_params)
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student.update(sc_params)
    redirect_to student_path(@student)
  end

  private

  def find_student
    @student = Student.find_by_id(params[:id])
    redirect_to students_path if !@student
  end

  def sc_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
