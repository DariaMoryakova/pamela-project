class Instructor < ApplicationRecord
    has_one :cohort, dependent: :delete
    validates :age, numericality: { only_integer: true, less_than: 150 }
    validates :salary, numericality: { only_integer: true, greater_than:0 }
    validates :highest_comp_ed, inclusion: { in: %w(HS College Masters PHD) }

end 