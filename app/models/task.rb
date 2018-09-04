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
  belongs_to :user_doing, class_name: "User", optional: true

  scope :not_done, -> { where.not(done: true) }
  scope :due_today, -> { where("date(start_time) = ?", Date.today) }
end
