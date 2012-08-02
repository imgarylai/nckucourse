class CreateUserCourseships < ActiveRecord::Migration
  def change
    create_table :user_courseships do |t|
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
