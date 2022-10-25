class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true, length: {minimum: 10}


  paginates_per 3 #quantos registros por pagina// kaminari

  scope :desc_order, ->  { order(created_at: :desc) }
  scope :without_highlights, -> (ids) { where("id NOT IN(#{ids})") if ids.present? }
  scope :filter_by_category, -> (category) { where category_id: category.id if category.present? } #pegar a categoria pelo nome
  scope :filter_by_archive, lambda { |month_year|
    if month_year
      date = Date.strptime(month_year, '%B %Y')     #strptime - transforma string em data
      where created_at: date.beginning_of_month .. date.end_of_month.next_day   #de uma data ate outra data
    end
  }
end
