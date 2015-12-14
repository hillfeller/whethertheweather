class Ailment < ActiveRecord::Base
  belongs_to :user
  validates :description, length: {maximum: 150}, presence: true

end
