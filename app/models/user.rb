class User < ApplicationRecord
    validates :name, presence: true, length: { in: 3..10 }, uniqueness: true
    has_secure_password

    has_many :comments
    has_many :gyms
    has_many :nices
    has_many :nice_comments, through: :nices, source: :comment
end
