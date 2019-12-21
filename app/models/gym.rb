class Gym < ApplicationRecord
  belongs_to :area
  belongs_to :created_user
  belongs_to :updated_user
end
