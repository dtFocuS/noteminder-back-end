class Note < ApplicationRecord
  belongs_to :folder
  has_one :reminder, dependent: :destroy
end
