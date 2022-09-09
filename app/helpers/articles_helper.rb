module ArticlesHelper
  def handle_date(datetime)
    datetime.strftime('%e de %B, %Y')
  end
end
