class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes, as: :likeable
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings

  validates :title, length: {minimum: 5}, presence: true
  validates :body, length: {maximum: 150}, presence: true


end
