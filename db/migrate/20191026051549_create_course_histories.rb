class CreateCourseHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :course_histories do |t|
      t.date :effective_date
      t.integer :admin_course_id
      t.boolean :status
      t.text :short_title
      t.text :long_title
      t.integer :min_units
      t.integer :max_units
      t.float :progress_units
      t.string :grading
      t.boolean :last_course
      t.integer :enrollment_unit_calc
	  t.text :description
	  t.integer :history_id
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
