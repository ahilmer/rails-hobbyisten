class CreateUsersLocations < ActiveRecord::Migration
  def change
    create_table :users_locations do |t|

      t.timestamps
    end
  end
end
