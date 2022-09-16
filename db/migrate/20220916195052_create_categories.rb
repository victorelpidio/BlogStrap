class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false #null:false nao permite valores nulos

      t.timestamps
    end
  end
end
