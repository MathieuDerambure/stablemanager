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

end
