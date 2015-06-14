class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :message
      t.string :event_id
      t.string :integer

      t.timestamps
    end
  end
end
