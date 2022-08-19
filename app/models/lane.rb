class Lane < ApplicationRecord
    has_many :tickets, dependent: :destroy
    belongs_to :project
end
