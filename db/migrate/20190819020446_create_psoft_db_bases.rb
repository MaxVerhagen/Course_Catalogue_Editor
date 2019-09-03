class CreatePsoftDbBases < ActiveRecord::Migration[5.2]
  def change
    create_table :psoft_db_bases do |t|

      t.timestamps
    end
  end
end
