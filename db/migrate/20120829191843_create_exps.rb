class CreateExps < ActiveRecord::Migration
  def change
    create_table :exps do |t|
      t.integer :user_id
      t.integer :course_id
      t.string :year
      t.text :material
      t.text :style
      t.text :content
      t.string :score
      t.integer :rate

      t.timestamps
    end
  end
end
