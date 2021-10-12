class Task < ApplicationRecord
    belongs_to :plant
    has_many :square_tasks
end
