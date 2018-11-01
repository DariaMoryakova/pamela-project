class CoursesController < ApplicationController

    def index 
        @courses = Course.all
        
    end 
  
    def create
 
      @course = Course.create(course_params)
     
      redirect_to @course
       
    end
  
    def new
      @course = Course.new 
     
    end
  
    def show
      id = params[:id]
      @course = Course.find_by_id(id)
    end 
  

    def other_hello 
        redirect_to(:action => 'hello')
    end 
    
    def destroy
      id = params[:id]
      @course = Course.find_by_id(id)
      @course.destroy
      respond_to do |format|
        format.js 
      end
    end 

    def edit 
      @course = Course.find(params[:id]) 
    end 

    def update 
      course = Course.find(params[:id]) 
      course.update(course_params)

      redirect_to course_path(course)
    end  

    private

    def course_params
        params.require(:course).permit(:course_name,:total_hours)
    end

    
 
  end
  