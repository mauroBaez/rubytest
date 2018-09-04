class Guest < ApplicationRecord
    belongs_to :invitation
    acts_as_list scope: :invitation
    validates :name, presence: true

end
