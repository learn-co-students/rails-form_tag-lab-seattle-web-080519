class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    render new_student_path
  end

  def create
    @first = params[:student][:first_name]
    @last = params[:student][:first_name]
    @student = Student.create(first_name: @first, last_name: @last)
    redirect_to student_path(@student)
  end 

end
