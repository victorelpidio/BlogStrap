class Category < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3}
  has_many :articles, dependent: :restrict_with_error #dependent: :restritc_with_error : nao permite apagar um category com um article dentro
  scope :sorted, ->  { order(:name) } # coloca em ordem alfabetica
end
