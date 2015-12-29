class AddStudentIdToCourses < ActiveRecord::Migration
  def up 
  	add_column :courses, :student_id, :integer
  	add_index :courses, :student_id
  end
  def down 
  	remove_index :courses, :student_id
  	remove_column :courses, :student_id
end
end
