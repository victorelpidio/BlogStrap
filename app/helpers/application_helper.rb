module ApplicationHelper
  def render_if(condition, template, record) #helper feito para renderizar uma artigo valido 
    render template, record if condition
  end
end
