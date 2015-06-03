class CreateUsersHobbies < ActiveRecord::Migration
  def change
    create_table :users_hobbies do |t|

      t.timestamps
    end
  end
end
