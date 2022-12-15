module ApplicationHelper
  def render_if(condition, template, record) #helper feito para renderizar uma artigo valido 
    render template, record if condition
  end

  def handle_date(datetime)
    #datetime.strftime('%e de %B, %Y') // sem o i18n
    l(datetime, format: '%e de %B, %Y').capitalize
  end

  def sub_masked_email(email)
    email.gsub(/(?<=.{2}).*@.*(?=\S{2})/, '****@****')
  end
end
