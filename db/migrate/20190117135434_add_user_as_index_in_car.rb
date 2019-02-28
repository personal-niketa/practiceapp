class AddUserAsIndexInCar < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :user, index: true, foreign_key: true
  end
end
