class Cohort < ApplicationRecord
    has_many :students_cohorts
    has_many :students, through: :students_cohorts
    # belongs_to :course  
end 

