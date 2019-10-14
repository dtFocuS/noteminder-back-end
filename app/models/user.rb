class User < ApplicationRecord
  has_many :folders, dependent: :destroy
  has_many :notes, through: :folders
end
