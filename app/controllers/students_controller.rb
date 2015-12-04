class StudentsController < ApplicationController

  before_action :find_student, only: [:edit, :update, :show, :destroy]


  def index
    @students = Student.all.order("created_at DESC")
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new student_params
    if @student.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @student = Student.find params[:id]
  end

  def edit
  end

  def update

  end

  def destroy

    if @student.destroy
      redirect_to root_path
    else
      render 'show'
    end
  end


private

  def student_params
    params.require(:student).permit(:name, :email)
  end

  def find_student
    @student = Student.find params[:id]
  end

end
