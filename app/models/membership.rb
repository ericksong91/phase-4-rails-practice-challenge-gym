class Membership < ApplicationRecord
    validates :gym_id, presence: true
    validates :client_id, presence: true
    validate :no_two_memberships

    belongs_to :client
    belongs_to :gym

    # Custom Validations

    def no_two_memberships
        if Client.find(client_id).gyms.find_by(id: gym_id) == nil
            true
        else
            errors.add(:client_id, "already has a membership")
        end
    end
end
