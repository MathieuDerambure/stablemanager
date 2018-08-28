class Horse < ApplicationRecord
  belongs_to :user
  has_many :tasks

  include PgSearch
    pg_search_scope :search_horses,
      against: [ :name, :box, :formula ],
      using: {
        tsearch: { prefix: true }
      }

end
