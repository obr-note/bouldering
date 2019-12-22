class Gym < ApplicationRecord
  validates :address, presence: true, length: { in: 1..50 }
  validates :work_time, presence: true, length: { in: 1..50 }
  validates :price, presence: true, length: { in: 1..50 }
  validates :gym_url, presence: true, length: { in: 1..50 }


  belongs_to :area
  belongs_to :created_user, class_name: 'User'
  belongs_to :updated_user, class_name: 'User'
end
