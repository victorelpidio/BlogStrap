# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.delete_all
user = User.first
text = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."

p 'Iniciando...'
  Category.all.each do |category|
    30.times do 
      Article.create!(
        title:"Article #{rand(10_000)}",  #rand - gera dados randomicos
        body: text,
        category_id: category.id,
        user_id: user.id,
        created_at: rand(365).days.ago
      )
    end
  end
p 'executado...'