class Horse < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  include PgSearch
    pg_search_scope :search_horses,
      against: [ :name, :box, :formula ],
      associated_against: {
      user: [ :email ]
      },
      using: {
        tsearch: { prefix: true }
      }


  def morning_tasks
    tasks.food.due_today.where('extract(hour from start_time) = 8')
  end

  def midday_tasks
    tasks.food.due_today.where('extract(hour from start_time) = 12')
  end

  def evening_tasks
    tasks.food.due_today.where('extract(hour from start_time) = 18')
  end

  def has_food_tasks_not_done?
    tasks.food.due_today.where.not(done: true).any?
  end

end

