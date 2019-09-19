class CreateOfferings < ActiveRecord::Migration[5.2]
  def change
    create_table :offerings do |t|
      t.integer :admin_course_id
      t.integer :offering_number
      t.string :subject
      t.string :catalogue_num
      t.string :campus
      t.string :schedule_course
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
