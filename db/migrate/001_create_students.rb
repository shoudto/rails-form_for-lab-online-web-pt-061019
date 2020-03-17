class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t| # creating students table 
      t.string :first_name        # adding attributes first and last name
      t.string :last_name

      t.timestamps null: false
    end
  end
end