class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true, length: {minimum: 10}

  belongs_to :category

  paginates_per 3 #quantos registros por pagina// kaminari

  scope :desc_order, ->  { order(created_at: :desc) }
  scope :without_highlights, -> (ids) { where("id NOT IN(#{ids})") if ids.present? }
end
