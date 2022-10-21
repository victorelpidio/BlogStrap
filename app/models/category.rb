class Category < ApplicationRecord
  validates :name,
            presence: true,
            length: {minimum: 3},
            uniqueness: {case_sensitive: false} #nao permite criar mais de uma categoria com o mesmo nome

  has_many :articles, dependent: :restrict_with_error #dependent: :restritc_with_error : nao permite apagar um category com um article dentro
  scope :sorted, ->  { order(:name) } # coloca em ordem alfabetica
end
