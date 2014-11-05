class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.references :activityType

      t.timestamps
    end
    add_index :activities, :activityType_id
  end
end
