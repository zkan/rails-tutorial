class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/ },
    length: { minimum: 3, maximum: 50 }
  validates :email, presence: true, confirmation: true
end
