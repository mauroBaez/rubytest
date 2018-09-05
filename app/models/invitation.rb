class Invitation < ApplicationRecord
    has_many :guests, -> { order(position: :asc) }
    accepts_nested_attributes_for :guests, allow_destroy: true
    
end
