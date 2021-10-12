class Garden < ApplicationRecord
    has_many :squares, dependent: :destroy
    belongs_to :user
    validates_presence_of :name
end
