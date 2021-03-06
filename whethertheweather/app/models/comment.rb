class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :likes, as: :likeable
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  default_scope { order('updated_at DESC') }


end
