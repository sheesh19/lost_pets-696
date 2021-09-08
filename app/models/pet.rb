class Pet < ApplicationRecord
    SPECIES = [ 'dog', 'cat', 'dolphin', 'kangaroo', 'bird', 'tiger', 'polar bear' ]
    validates :name, presence: true
    validates :species, inclusion: { in: SPECIES }

    def found_days_ago
        (Date.today - found_on).to_i
    end
end