class User < ApplicationRecord
  rolify
  has_many :articles, dependent: :destroy
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :omniauthable
  has_many :comments, dependent: :destroy # 1 user pode criar N comentarios em N articles
  devise :confirmable,
         :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :trackable,
         :validatable
end
