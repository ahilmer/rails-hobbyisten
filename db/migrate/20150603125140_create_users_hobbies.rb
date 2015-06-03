class CreateUsersHobbies < ActiveRecord::Migration
  def change
    create_table :users_hobbies do |t|
      t.belongs_to :user
      t.belongs_to :hobby

      t.timestamps
    end
  end
end
