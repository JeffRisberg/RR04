class CreateActivityEvents < ActiveRecord::Migration
  def change
    create_table :activity_events do |t|
      t.references :userActivity
      t.integer :amount
      t.string :journalEntry

      t.timestamps
    end
    add_index :activity_events, :userActivity_id
  end
end
