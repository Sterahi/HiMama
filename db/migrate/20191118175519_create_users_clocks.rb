class CreateUsersClocks < ActiveRecord::Migration[6.0]
  def change
    create_table :users_clocks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :clock_event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
