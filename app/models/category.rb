class Category < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3}
  has_many :articles
end
