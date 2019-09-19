class CreateOrganisations < ActiveRecord::Migration[5.2]
  def change
    create_table :organisations do |t|
      t.date :effective_date
      t.string :name
      t.boolean :status
      t.text :description
      t.string :short_description
      t.text :formal_description

      t.timestamps
    end
  end
end
