class Plant < ApplicationRecord
    has_many :squares
    has_many :tasks
    has_many :associations

end
