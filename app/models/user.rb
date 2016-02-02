class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :carted_products
  has_many :orders, through: :carted_products

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
