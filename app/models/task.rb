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

  # TYPE
  scope :activity,   -> { where.not(activity_id: nil) }
  scope :antidote,   -> { where.not(antidote_id: nil) }
  scope :food,       -> { where.not(food_type_id: nil) }
  scope :medecine,   -> { where.not(medecine_id: nil) }
  scope :shoe_maker, -> { where.not(shoe_maker_id: nil) }
  scope :vetenary,   -> { where.not(vetenary_id: nil) }

  # STATUS
  scope :not_done,   -> { where.not(done: true) }
  scope :due_today,  -> { where("date(start_time) = :today", today: Date.today) }

  # TIME
  scope :to_come,    -> { where("date(start_time) >= :today", today: Date.today) }

  scope :this_week,  -> do
    where(
      "date(start_time) BETWEEN :monday AND :sunday",
      monday: Date.today.beginning_of_week,
      sunday: Date.today.end_of_week
    ).
    order(:start_time)
  end

  scope :next_week,  -> do
    where(
      "date(start_time) BETWEEN :monday AND :sunday",
      monday: Date.today.beginning_of_week + 7.days,
      sunday: Date.today.end_of_week + 7.days
    ).
    order(:start_time)
  end

  def morning?
    start_time.hour == 8
  end

  def midday?
    start_time.hour == 12
  end

  def evening?
    start_time.hour == 18
  end

  def daytime
    if morning?
      "morning"
    elsif midday?
      "midday"
    elsif evening?
      "evening"
    end
  end
end
