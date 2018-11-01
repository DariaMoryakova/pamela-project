class StudentsController < ApplicationController

  def index 
      @students = Student.all
      
  end 

  def create
    # @student = Student.create(
    #   first_name: params[:student] [:first_name],
    #   last_name: params[:student] [:last_name],
    #   age: params[:student] [:age],
    #   highest_level_of_education: params[:student] [:highest_level_of_education]
    # )
   
    @student = Student.create(students_params)

    redirect_to students_path
     end

  def new
    @student = Student.new 
    @cohort_id = 1   
  end

  def show
    id = params[:id]
    @student = Student.find_by_id(id)
  end 

  def edit 
    @student = Student.find(params[:id])

  end 


  def update 
    student = Student.find(params[:id])
    student.update(students_params)

    redirect_to student_path(student)

  end 

  def other_hello 
      redirect_to(:action => 'hello')
  end 
  
  def destroy
    id = params[:id]
    @student = Student.find_by_id(id)
    @student.destroy
    respond_to do |format|
      format.js 
    end
  end 


  def students_params
    params.require(:student).permit(:first_name,:last_name,:age,:highest_level_of_education)
end

end

