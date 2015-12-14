class Label < ActiveRecord::Base
  has_many :labelings

  has_many :posts, through: :labelings, source: :labelable, source_type: :Post

  has_many :comments, through: :labelings, source: :labelable, source_type: :Comments

   def self.update_labels(label_string)

     return Label.none if label_string.blank?

     label_string.split(",").map do |label|
       Label.find_or_create_by(name: label.strip)
     end
   end
end
