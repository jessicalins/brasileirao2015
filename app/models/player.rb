class Player < ActiveRecord::Base
  validates :name, :position, :age, :picture, :team_id, presence: true
  belongs_to :team
  mount_uploader :picture, AvatarUploader
end
