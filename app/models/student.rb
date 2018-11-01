class Student < ApplicationRecord
    has_many :students_cohorts 
    validates :age, numericality: { only_integer: true, less_than: 150 }
    validates :highest_level_of_education, inclusion: { in: %w(HS, College, Masters, PHD)
    has_many :cohorts, through: :students_cohorts
    has_many :instructors 
end 