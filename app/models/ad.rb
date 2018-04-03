class Ad < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }
  validates :text, presence: true, length: { minimum: 10 }
end
