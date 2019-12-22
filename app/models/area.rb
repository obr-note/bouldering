class Area < ApplicationRecord
    validates :area_name, presence: true, length: { in: 1..50 }

    has_many :gyms
end
