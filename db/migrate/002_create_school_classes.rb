class CreateSchoolClasses < ActiveRecord::Migration
    def change 
        create_table :school_classes do |t| # creating table for school classes 
            t.string :title                 # creating attributes for title and room_number 
            t.integer :room_number

            t.timestamps null: false
        end 
    end 
end 