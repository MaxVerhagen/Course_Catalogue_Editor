class CreateOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :ownerships do |t|
      t.integer :percentage_owned
      t.references :offering, foreign_key: true
      t.references :organisation, foreign_key: true

      t.timestamps
    end
  end
end
