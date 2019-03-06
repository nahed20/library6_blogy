class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :year
      t.boolean :moonroof
      t.string :dealership

      t.timestamps
    end
  end
end
