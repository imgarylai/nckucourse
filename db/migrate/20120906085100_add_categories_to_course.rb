class AddCategoriesToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :categories, :string
  end
end
