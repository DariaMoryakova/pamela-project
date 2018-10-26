class CohortsController < ApplicationController

    def index 
        @cohorts = Cohort.all
        
    end 
  
    def create
      @cohort = Cohort.create(
        cohort_name: params[:cohort] [:cohort_name],
        start_date: params[:cohort] [:start_date],
        end_date: params[:cohort] [:end_date],
        instructor_id: params[:cohort] [:instructor_id]
      )

      redirect_to @cohort
       
    end
  
    def new
      @cohort = Cohort.new 
      @instructor_id = 1   
    end
  
    def show
      id = params[:id]
      @cohort = Cohort.find_by_id(id)
    end 
  
  
    def other_hello 
        redirect_to(:action => 'hello')
    end 
  
    
  end
  