class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.bigint :user_id, null: false, :unsigned => true
      t.string :name, null: false, :limit => 100
      t.string :description, null:true
      t.string :location, null:false, :limit => 100
      t.date :start_date, null: false 
      t.date :end_date, null: false
      t.time :start_time, null: false 
      t.time :end_time, null: false
      t.integer :is_active, default: 0, :limit => 1
      t.timestamps
    end
  end
end
