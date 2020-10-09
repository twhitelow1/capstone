class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :chore_id
      t.integer :user_id
      t.datetime :date_due
      t.boolean :completed
      t.integer :assigner_id

      t.timestamps
    end
  end
end
