class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|

      t.timestamps
    end
  end
end
