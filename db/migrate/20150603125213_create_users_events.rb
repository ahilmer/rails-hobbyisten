class CreateUsersEvents < ActiveRecord::Migration
  def change
    create_table :users_events do |t|

      t.timestamps
    end
  end
end
