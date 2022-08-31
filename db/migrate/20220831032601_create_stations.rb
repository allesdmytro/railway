class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :title
      t.string :address
      t.string :phone
      t.text :info

      t.timestamps
    end
  end
end
