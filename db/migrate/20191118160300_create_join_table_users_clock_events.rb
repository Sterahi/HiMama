class CreateJoinTableUsersClockEvents < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :clock_events do |t|
       t.index [:user_id, :clock_event_id]
       t.index [:clock_event_id, :user_id]
    end
  end
end
