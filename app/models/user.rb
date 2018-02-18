class User < ApplicationRecord
  has_many :reviews
  has_many :books, through: :reviews
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
