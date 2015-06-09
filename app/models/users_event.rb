class UsersEvent < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validate :user_id, presence: true
  validates :event_id, presence: true
end
