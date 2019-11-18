class CreateClockEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :clock_events do |t|
      t.string :event_type
      t.integer :user

      t.timestamps
    end
  end
end
