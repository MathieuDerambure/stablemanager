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
    tasks.where('extract(hour from start_time) = 8 AND food_type_id IS NOT null')
  end

  def midday_tasks
    tasks.where('extract(hour from start_time) = 12 AND food_type_id IS NOT null')
  end

  def evening_tasks
    tasks.where('extract(hour from start_time) = 18 AND food_type_id IS NOT null')
  end

  def has_food_tasks_not_done?
    tasks.where('food_type_id IS NOT null').where.not(done: true).any?
  end

end

