class Communication < ApplicationRecord
  belongs_to :user

  validates :message, length: { minimum: 3 }
  validates :message, length: { maximum: 140 }

end
