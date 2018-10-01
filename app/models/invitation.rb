class Invitation < ApplicationRecord
    
    has_many :guests, -> { order(position: :asc) }, dependent: :delete_all
    accepts_nested_attributes_for :guests, allow_destroy: true
    has_many :sent_emails, -> { order(id: :asc) }, dependent: :delete_all
    accepts_nested_attributes_for :sent_emails, allow_destroy: true
end
