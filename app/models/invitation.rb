class Invitation < ApplicationRecord
    
    has_many :guests, -> { order(position: :asc) }, dependent: :delete_all
    accepts_nested_attributes_for :guests, allow_destroy: true
    
end
