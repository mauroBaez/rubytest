class Invitation < ApplicationRecord
    has_many :guests
    accepts_nested_attributes_for :guests, allow_destroy: true
    
end
