class Messageboard < ApplicationRecord
    has_many :messages, dependent: :destroy
    accepts_nested_attributes_for :messages, allow_destroy: true

    validates_presence_of :name
end
