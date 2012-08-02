class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :sn
      t.string :time

      t.timestamps
    end
  end
end
