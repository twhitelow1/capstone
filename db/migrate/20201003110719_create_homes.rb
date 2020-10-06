class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.integer :user_id
      t.string :address
      t.string :home_type

      t.timestamps
    end
  end
end
