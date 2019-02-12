class User < ApplicationRecord
  has_many :attendances
  has_many :event, through: :attendances
end
