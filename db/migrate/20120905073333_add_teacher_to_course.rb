class AddTeacherToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :teacher, :string
  end
end
