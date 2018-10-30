class Instructor < ApplicationRecord
    has_one :cohort, dependent: :delete 

end 