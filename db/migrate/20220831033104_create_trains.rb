class CreateTrains < ActiveRecord::Migration[7.0]
  def change
    create_table :trains do |t|
      t.string :departure
      t.string :destignation
      t.integer :seats

      t.timestamps
    end
  end
end
