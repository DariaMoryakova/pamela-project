class Course < ApplicationRecord
    has_many :cohorts 
    validates :age, numericality: { only_integer: true, greater_than: 0 }
end 