class CohortsController < ApplicationController

    def index 
        @cohorts = Cohort.all
        
    end 
  
    def create

      @cohort = Cohort.create(cohort_params)
    
      redirect_to @cohort
       
    end
  
    def new
      @cohort = Cohort.new 
  
    end
  
    def show
      id = params[:id]
      @cohort = Cohort.find_by_id(id)
    end 
  
  
    def other_hello 
        redirect_to(:action => 'hello')
    end 
  
    
    def destroy
      id = params[:id]
      @cohort = Cohort.find_by_id(id)
      @cohort.destroy
      respond_to do |format|
        format.js 
      end
    end 

    def edit 
      @cohort = Cohort.find(params[:id]) 
    end 

    def update 
      cohort = Cohort.find(params[:id]) 
      cohort.update(cohort_params)

      redirect_to cohort_path(cohort)
    end  

 

    def cohort_params
        params.require(:cohort).permit(:cohort_name,:start_date,:end_date,:cohort_id)
    end

  end
  