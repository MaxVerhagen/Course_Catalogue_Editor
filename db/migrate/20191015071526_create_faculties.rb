class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
