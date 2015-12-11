class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :locations
  has_many :ailments

  def liked_post(post)
      likes.where(post_id: post.id).first
  end

  def liked_comment(comment)
      likes.where(comment_id: comment.id).first
  end
end
