class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.bigint :event_id, null: false, :unsigned => true
      t.string :name, null: false, :limit => 100
      t.string :payment_type, null: false, :limit => 50 
      t.string :description, null:true
      t.decimal :price, precision: 10, scale: 2, :unsigned => true
      t.integer :available_slots, null: false, :unsigned => true
      t.timestamps
    end
  end
end
