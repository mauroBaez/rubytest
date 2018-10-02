class SentEmail < ApplicationRecord
    belongs_to :guest
    belongs_to :invitation
    has_many :email_events, -> { order(id: :desc) }, dependent: :delete_all
    accepts_nested_attributes_for :email_events, allow_destroy: true
end
