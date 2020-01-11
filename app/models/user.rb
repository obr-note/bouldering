class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :gyms
  has_many :nices
  has_many :nice_comments, through: :nices, source: :comment
end