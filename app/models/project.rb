class Project < ApplicationRecord
    has_many :lanes, dependent: :destroy
end
