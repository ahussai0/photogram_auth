class Like < ApplicationRecord
  validates :user_id, presence: true
  validates :user_id, uniqueness: { scope: :photo_id}
  validates :photo_id, presence: true
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  belongs_to :photo, :class_name => "Photo", :foreign_key => "photo_id"
end
