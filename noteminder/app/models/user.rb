class User < ApplicationRecord
  has_many :notes
  has_many :reminders, through: :notes
end