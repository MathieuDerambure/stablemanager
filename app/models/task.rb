class Task < ApplicationRecord
  belongs_to :horse
  belongs_to :user
  belongs_to :food_type
  belongs_to :activity
  belongs_to :medecine
  belongs_to :comment
  belongs_to :vetenary
  belongs_to :shoe_maker
end
