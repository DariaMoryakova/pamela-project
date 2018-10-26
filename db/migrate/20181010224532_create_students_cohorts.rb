class CreateStudentsCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :students_cohorts do |t|
      t.integer :student_id
      t.integer :cohort_id
    end
  end
end
