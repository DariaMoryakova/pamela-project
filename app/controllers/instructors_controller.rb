class InstructorsController < ApplicationController

    def index 
        @instructors = Instructor.all
        
    end 
  
    def create
    #   @instructor = Instructor.create(
    #     first_name: params[:instructor] [:first_name],
    #     last_name: params[:instructor] [:last_name],
    #     age: params[:instructor] [:age],
    #     salary: params[:instructor] [:salary],
    #     highest_comp_ed: params[:instructor] [:highest_comp_ed]
    #   )

      @instructor = Instructor.create(instructor_params)
      p @instructor.errors.messages
      redirect_to @instructor
       
    end
  
    def new
      @instructor = Instructor.new 
      @cohort_id = 1   
    end
  
    def show
      id = params[:id]
      @instructor = Instructor.find_by_id(id)
    end 
  

    def other_hello 
        redirect_to(:action => 'hello')
    end 
  
    private

    def instructor_params
        params.require(:instructor).permit(:first_name,:last_name,:age,:salary,:highest_comp_ed)
    end
    
  end
  