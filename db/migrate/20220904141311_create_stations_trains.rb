class CreateStationsTrains < ActiveRecord::Migration[7.0]
  def change
    create_table :stations_trains do |t|
      t.references :train
      t.references :station

      t.timestamps
    end
  end
end
