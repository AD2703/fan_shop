class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :campaigns
  has_many :campaign_products, through: :campaigns
  has_many :orders
  has_many :order_items, through: :orders
  has_many :payments, through: :orders
  validates :name, presence: true
  validates :seller, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :description, presence: true
  validates :address, presence: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }
end
