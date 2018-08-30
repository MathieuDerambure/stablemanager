class Communication < ApplicationRecord
  paginates_per 5

  belongs_to :user

  validates :message, length: { minimum: 3 }
  validates :message, length: { maximum: 140 }

end
