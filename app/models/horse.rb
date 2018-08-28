class Horse < ApplicationRecord
  belongs_to :user
  has_many :tasks

  mount_uploader :photo, PhotoUploader
end
