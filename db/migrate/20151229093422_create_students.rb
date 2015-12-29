class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :description
      t.string :roll_no

      t.timestamps
    end
  end
end
