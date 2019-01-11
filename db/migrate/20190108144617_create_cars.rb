class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_model
      t.string :description
      t.timestamps
    end
  end
end
