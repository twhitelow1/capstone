class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :house_id
      t.integer :floor
      t.string :room_type
      t.string :privacy

      t.timestamps
    end
  end
end
