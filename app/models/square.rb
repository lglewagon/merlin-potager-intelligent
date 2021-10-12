class Square < ApplicationRecord
    belongs_to :garden, autosave: true
    belongs_to :plant, required: false
    has_many :square_tasks
end
