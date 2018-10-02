class EmailEvent < ApplicationRecord
    belongs_to :invitation
    belongs_to :sent_email
end