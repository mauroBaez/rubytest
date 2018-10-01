class SentEmail < ApplicationRecord
    belongs_to :guest
    belongs_to :invitation
    
end
