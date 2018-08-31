class Task < ApplicationRecord
  belongs_to :horse
  belongs_to :user, optional: true
  belongs_to :food_type, optional: true
  belongs_to :activity, optional: true
  belongs_to :medecine, optional: true
  belongs_to :comment, optional: true
  belongs_to :vetenary, optional: true
  belongs_to :shoe_maker, optional: true
  belongs_to :antidote, optional: true

end
