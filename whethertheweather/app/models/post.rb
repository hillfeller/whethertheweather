class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes, as: :likeable
  belongs_to :label
  validates :user, presence: true
  default_scope {order('created_at DESC')}
  validates :title, length: {minimum: 5}, presence: true
  validates :body, length: {maximum: 500}, presence: true
  #validates :label, presence: true


  def shine?
    label.name == "shine" if label
  end

  def cloudy?
    label.name == "cloudy" if label
  end


  def drizzle?
    label.name == "drizzle" if label
  end

  def downpour?
    label.name == "imminent downpour" if label
  end

  def rain?
    label.name == "rain" if label
  end


end
