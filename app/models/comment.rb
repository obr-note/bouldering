class Comment < ApplicationRecord
  validates :evaluation, presence: true, numericality: true
  validates :comment, presence: true, length: { in: 1..50 }

  belongs_to :gym
  belongs_to :user

  has_many :nices
  has_many :nice_users, through: :nices, source: :user
end
