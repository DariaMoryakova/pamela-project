class StudentsController < ApplicationController

  def index 
      @students = Student.all
      
  end 

  def create
    @student = Student.create(
      first_name: params[:student] [:first_name],
      last_name: params[:student] [:last_name],
      age: params[:student] [:age],
      highest_level_of_education: params[:student] [:highest_level_of_education]
    )
   
    redirect_to @student
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

  def other_hello 
      redirect_to(:action => 'hello')
  end 
  
  def destroy 
    #we find a student first: 
      id = params[:id]
      @student = Student.find_by_id(id) 
      @student.destroy

        respond_to do |format|
        # when responding to a html request, it will respond by
        #   generating the html from the template located at: /app/views/users/index.html.erb
          format.html
          format.js 
          end 
      end 
end

