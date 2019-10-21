class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :username
      t.string :password
      t.string :usertype

      t.timestamps
    end
  end
end
