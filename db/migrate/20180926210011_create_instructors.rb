class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.text :first_name
      t.text :last_name 
      t.integer :age
      t.money :salary
      t.text :highest_comp_ed 
      t.integer :cohort_id 
    end
  end
end
