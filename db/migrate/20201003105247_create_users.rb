class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :first_name
      t.string :last_name
      t.integer :house_id
      t.integer :points

      t.timestamps
    end
  end
end
