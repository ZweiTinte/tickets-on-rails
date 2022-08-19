class Project < ApplicationRecord
    include Visible
    
    has_many :lanes, dependent: :destroy
end
