class TaskPeriodicity < ApplicationRecord
  belongs_to :periodicitys
  belongs_to :tasks

  has_many: tasks
  has_many: periodicities
end
